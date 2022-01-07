; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_statesav.c_StateSav_ReadFNAME.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_statesav.c_StateSav_ReadFNAME.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILENAME_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"Filenames of %d characters not supported on this platform\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StateSav_ReadFNAME(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %3, align 8
  %4 = call i32 @StateSav_ReadUWORD(i64* %3, i32 1)
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @FILENAME_MAX, align 8
  %7 = icmp uge i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = trunc i64 %9 to i32
  %11 = call i32 @Log_print(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %20

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @StateSav_ReadUBYTE(i32* %14, i64 %15)
  %17 = load i8*, i8** %2, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8 0, i8* %19, align 1
  br label %20

20:                                               ; preds = %12, %8
  ret void
}

declare dso_local i32 @StateSav_ReadUWORD(i64*, i32) #1

declare dso_local i32 @Log_print(i8*, i32) #1

declare dso_local i32 @StateSav_ReadUBYTE(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
