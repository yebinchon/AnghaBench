; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_zfree_poison_element.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_zfree_poison_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@zp_factor = common dso_local global i64 0, align 8
@zp_tiny_zone_limit = common dso_local global i64 0, align 8
@zp_scale = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@ZP_POISON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfree_poison_element(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* @FALSE, align 8
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* @zp_factor, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* @zp_tiny_zone_limit, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %70

16:                                               ; preds = %13, %2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* @zp_factor, align 8
  %21 = load i64, i64* %6, align 8
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @zp_scale, align 4
  %24 = ashr i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %20, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @zp_tiny_zone_limit, align 8
  %30 = icmp sle i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = load i64, i64* @TRUE, align 8
  store i64 %32, i64* %5, align 8
  br label %46

33:                                               ; preds = %16
  %34 = load i64, i64* @zp_factor, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @sample_counter(i32* %38, i32 %39)
  %41 = load i64, i64* @TRUE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i64, i64* @TRUE, align 8
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %43, %36, %33
  br label %46

46:                                               ; preds = %45, %31
  %47 = load i64, i64* %5, align 8
  %48 = call i64 @__improbable(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %46
  %51 = load i64, i64* %4, align 8
  %52 = inttoptr i64 %51 to i64*
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  store i64* %53, i64** %8, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %4, align 8
  %56 = inttoptr i64 %55 to i64*
  %57 = call i64* @get_backup_ptr(i64 %54, i64* %56)
  store i64* %57, i64** %9, align 8
  br label %58

58:                                               ; preds = %65, %50
  %59 = load i64*, i64** %8, align 8
  %60 = load i64*, i64** %9, align 8
  %61 = icmp ult i64* %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i64, i64* @ZP_POISON, align 8
  %64 = load i64*, i64** %8, align 8
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %62
  %66 = load i64*, i64** %8, align 8
  %67 = getelementptr inbounds i64, i64* %66, i32 1
  store i64* %67, i64** %8, align 8
  br label %58

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68, %46
  br label %70

70:                                               ; preds = %69, %13
  %71 = load i64, i64* %5, align 8
  ret i64 %71
}

declare dso_local i64 @sample_counter(i32*, i32) #1

declare dso_local i64 @__improbable(i64) #1

declare dso_local i64* @get_backup_ptr(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
