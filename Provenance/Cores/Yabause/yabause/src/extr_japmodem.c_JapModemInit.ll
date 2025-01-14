; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_japmodem.c_JapModemInit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_japmodem.c_JapModemInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@JapModemArea = common dso_local global i32* null, align 8
@CART_NONE = common dso_local global i32 0, align 4
@Cs2Area = common dso_local global %struct.TYPE_2__* null, align 8
@YAB_ERR_CANNOTINIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Japanese Modem\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @JapModemInit(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = call i32* @malloc(i32 4)
  store i32* %6, i32** @JapModemArea, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, i32* @CART_NONE, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Cs2Area, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @YAB_ERR_CANNOTINIT, align 4
  %13 = call i32 @YabSetError(i32 %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @NetlinkInit(i8* %15, i8* %16)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %8
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @YabSetError(i32, i8*) #1

declare dso_local i32 @NetlinkInit(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
