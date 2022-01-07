; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kdasm.c_make_signed_hex_str_16.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kdasm.c_make_signed_hex_str_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@make_signed_hex_str_16.str = internal global [20 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"-$8000\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"-$%x\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"$%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @make_signed_hex_str_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @make_signed_hex_str_16(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 65535
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, 32768
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @make_signed_hex_str_16.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %23

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, 32768
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  %15 = sub nsw i32 0, %14
  %16 = and i32 %15, 32767
  %17 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @make_signed_hex_str_16.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  br label %22

18:                                               ; preds = %9
  %19 = load i32, i32* %2, align 4
  %20 = and i32 %19, 32767
  %21 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @make_signed_hex_str_16.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %18, %13
  br label %23

23:                                               ; preds = %22, %7
  ret i8* getelementptr inbounds ([20 x i8], [20 x i8]* @make_signed_hex_str_16.str, i64 0, i64 0)
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
