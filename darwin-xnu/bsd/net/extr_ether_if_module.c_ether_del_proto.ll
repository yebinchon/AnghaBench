; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ether_if_module.c_ether_del_proto.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ether_if_module.c_ether_del_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.ether_desc_blk_str = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@M_IFADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ether_del_proto(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ether_desc_blk_str*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ether_desc_blk_str*
  store %struct.ether_desc_blk_str* %12, %struct.ether_desc_blk_str** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.ether_desc_blk_str*, %struct.ether_desc_blk_str** %6, align 8
  %14 = icmp eq %struct.ether_desc_blk_str* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %94

16:                                               ; preds = %2
  %17 = load %struct.ether_desc_blk_str*, %struct.ether_desc_blk_str** %6, align 8
  %18 = getelementptr inbounds %struct.ether_desc_blk_str, %struct.ether_desc_blk_str* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %49, %16
  %21 = load i32, i32* %7, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %20
  %24 = load %struct.ether_desc_blk_str*, %struct.ether_desc_blk_str** %6, align 8
  %25 = getelementptr inbounds %struct.ether_desc_blk_str, %struct.ether_desc_blk_str* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %23
  store i32 1, i32* %8, align 4
  %36 = load %struct.ether_desc_blk_str*, %struct.ether_desc_blk_str** %6, align 8
  %37 = getelementptr inbounds %struct.ether_desc_blk_str, %struct.ether_desc_blk_str* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.ether_desc_blk_str*, %struct.ether_desc_blk_str** %6, align 8
  %45 = getelementptr inbounds %struct.ether_desc_blk_str, %struct.ether_desc_blk_str* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %35, %23
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %7, align 4
  br label %20

52:                                               ; preds = %20
  %53 = load %struct.ether_desc_blk_str*, %struct.ether_desc_blk_str** %6, align 8
  %54 = getelementptr inbounds %struct.ether_desc_blk_str, %struct.ether_desc_blk_str* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @M_IFADDR, align 4
  %62 = call i32 @FREE(i64 %60, i32 %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %93

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %87, %65
  %67 = load %struct.ether_desc_blk_str*, %struct.ether_desc_blk_str** %6, align 8
  %68 = getelementptr inbounds %struct.ether_desc_blk_str, %struct.ether_desc_blk_str* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = load %struct.ether_desc_blk_str*, %struct.ether_desc_blk_str** %6, align 8
  %73 = getelementptr inbounds %struct.ether_desc_blk_str, %struct.ether_desc_blk_str* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load %struct.ether_desc_blk_str*, %struct.ether_desc_blk_str** %6, align 8
  %76 = getelementptr inbounds %struct.ether_desc_blk_str, %struct.ether_desc_blk_str* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br label %84

84:                                               ; preds = %71, %66
  %85 = phi i1 [ false, %66 ], [ %83, %71 ]
  br i1 %85, label %86, label %92

86:                                               ; preds = %84
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.ether_desc_blk_str*, %struct.ether_desc_blk_str** %6, align 8
  %89 = getelementptr inbounds %struct.ether_desc_blk_str, %struct.ether_desc_blk_str* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %89, align 8
  br label %66

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %57
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %15
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @FREE(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
