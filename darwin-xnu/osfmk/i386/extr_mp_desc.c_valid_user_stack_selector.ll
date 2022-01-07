; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp_desc.c_valid_user_stack_selector.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp_desc.c_valid_user_stack_selector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_5__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@SEL_LDT = common dso_local global i64 0, align 8
@USER_PRIV = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@GDTSZ = common dso_local global i64 0, align 8
@ACC_PL_U = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @valid_user_stack_selector(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  call void @selector_to_sel(%struct.TYPE_4__* sret %4, i64 %5)
  %6 = load i64, i64* %3, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %2, align 4
  br label %48

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SEL_LDT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @USER_PRIV, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %2, align 4
  br label %48

22:                                               ; preds = %15
  br label %46

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @GDTSZ, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @USER_PRIV, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load i64, i64* %3, align 8
  %35 = call %struct.TYPE_5__* @gdt_desc_p(i64 %34)
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ACC_PL_U, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @ACC_PL_U, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @TRUE, align 4
  store i32 %43, i32* %2, align 4
  br label %48

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %28, %23
  br label %46

46:                                               ; preds = %45, %22
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %42, %20, %8
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local void @selector_to_sel(%struct.TYPE_4__* sret, i64) #1

declare dso_local %struct.TYPE_5__* @gdt_desc_p(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
