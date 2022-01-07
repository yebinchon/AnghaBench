; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_backup_ptr_mismatch_panic.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_backup_ptr_mismatch_panic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@zp_nopoison_cookie = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@zp_poisoned_cookie = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32, i32)* @backup_ptr_mismatch_panic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @backup_ptr_mismatch_panic(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @zp_nopoison_cookie, align 4
  %16 = xor i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i64 @is_sane_zone_element(%struct.TYPE_5__* %17, i32 %18)
  store i64 %19, i64* %12, align 8
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64, i64* @TRUE, align 8
  br label %27

25:                                               ; preds = %4
  %26 = load i64, i64* @FALSE, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i64 [ %24, %23 ], [ %26, %25 ]
  store i64 %28, i64* %13, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = and i64 %30, -1099511627776
  %32 = icmp eq i64 %31, -375243527350648832
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i64, i64* @TRUE, align 8
  store i64 %34, i64* %13, align 8
  br label %43

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = and i64 %37, -1099511627776
  %39 = icmp eq i64 %38, -4539648215598759936
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i64, i64* @FALSE, align 8
  store i64 %41, i64* %13, align 8
  br label %42

42:                                               ; preds = %40, %35
  br label %43

43:                                               ; preds = %42, %33
  %44 = load i64, i64* %13, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @zp_poisoned_cookie, align 4
  %49 = xor i32 %47, %48
  store i32 %49, i32* %9, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i64 @is_sane_zone_element(%struct.TYPE_5__* %50, i32 %51)
  store i64 %52, i64* %11, align 8
  br label %60

53:                                               ; preds = %43
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @zp_nopoison_cookie, align 4
  %56 = xor i32 %54, %55
  store i32 %56, i32* %9, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @is_sane_zone_element(%struct.TYPE_5__* %57, i32 %58)
  store i64 %59, i64* %11, align 8
  br label %60

60:                                               ; preds = %53, %46
  %61 = load i64, i64* %12, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* %11, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @zp_nopoison_cookie, align 4
  %72 = xor i32 %70, %71
  %73 = call i32 @zone_element_was_modified_panic(%struct.TYPE_5__* %67, i32 %68, i32 %69, i32 %72, i64 0)
  br label %74

74:                                               ; preds = %66, %63, %60
  %75 = load i64, i64* %12, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %99

77:                                               ; preds = %74
  %78 = load i64, i64* %11, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %99, label %80

80:                                               ; preds = %77
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i64, i64* %13, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* @zp_poisoned_cookie, align 4
  br label %91

89:                                               ; preds = %80
  %90 = load i32, i32* @zp_nopoison_cookie, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = xor i32 %84, %92
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = sub i64 %96, 4
  %98 = call i32 @zone_element_was_modified_panic(%struct.TYPE_5__* %81, i32 %82, i32 %83, i32 %93, i64 %97)
  br label %99

99:                                               ; preds = %91, %77, %74
  %100 = load i64, i64* %12, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load i64, i64* %11, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @zp_nopoison_cookie, align 4
  %111 = xor i32 %109, %110
  %112 = call i32 @zone_element_was_modified_panic(%struct.TYPE_5__* %106, i32 %107, i32 %108, i32 %111, i64 0)
  br label %113

113:                                              ; preds = %105, %102, %99
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @zp_nopoison_cookie, align 4
  %119 = xor i32 %117, %118
  %120 = call i32 @zone_element_was_modified_panic(%struct.TYPE_5__* %114, i32 %115, i32 %116, i32 %119, i64 0)
  ret void
}

declare dso_local i64 @is_sane_zone_element(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @zone_element_was_modified_panic(%struct.TYPE_5__*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
