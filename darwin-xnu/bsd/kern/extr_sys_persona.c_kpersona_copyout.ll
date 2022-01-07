; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_persona.c_kpersona_copyout.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_persona.c_kpersona_copyout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kpersona_info = type { i32 }

@PERSONA_INFO_V1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kpersona_info*, i32)* @kpersona_copyout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kpersona_copyout(%struct.kpersona_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kpersona_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.kpersona_info* %0, %struct.kpersona_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @copyin(i32 %8, i64* %6, i32 8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %25

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @PERSONA_INFO_V1, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %25

20:                                               ; preds = %14
  %21 = load %struct.kpersona_info*, %struct.kpersona_info** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @copyout(%struct.kpersona_info* %21, i32 %22, i32 4)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %20, %18, %12
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @copyin(i32, i64*, i32) #1

declare dso_local i32 @copyout(%struct.kpersona_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
