; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_asdl.c_asdl_defconst.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_asdl.c_asdl_defconst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_4__*)* @asdl_defconst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asdl_defconst(i32 %0, i32 %1, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %34 [
    i32 130, label %7
    i32 128, label %14
    i32 129, label %21
    i32 131, label %28
  ]

7:                                                ; preds = %3
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @rcc_Defconst(i32 %8, i32 %9, i64 %11)
  %13 = call i32 @put(i32 %12)
  br label %34

14:                                               ; preds = %3
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @rcc_Defconst(i32 %15, i32 %16, i64 %18)
  %20 = call i32 @put(i32 %19)
  br label %34

21:                                               ; preds = %3
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @rcc_Defconst(i32 %22, i32 %23, i64 %25)
  %27 = call i32 @put(i32 %26)
  br label %34

28:                                               ; preds = %3
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @mk_real(i32 %30, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %2)
  %32 = call i32 @rcc_Defconstf(i32 %29, i32 %31)
  %33 = call i32 @put(i32 %32)
  br label %34

34:                                               ; preds = %7, %14, %21, %28, %3
  ret void
}

declare dso_local i32 @put(i32) #1

declare dso_local i32 @rcc_Defconst(i32, i32, i64) #1

declare dso_local i32 @rcc_Defconstf(i32, i32) #1

declare dso_local i32 @mk_real(i32, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
