; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/xml/extr_rxml.c_rxml_free_node.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/xml/extr_rxml.c_rxml_free_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxml_node = type { %struct.rxml_node*, %struct.rxml_node*, %struct.rxml_node*, %struct.rxml_node*, i64, %struct.rxml_node* }
%struct.rxml_attrib_node = type { %struct.rxml_attrib_node*, %struct.rxml_attrib_node*, %struct.rxml_attrib_node*, %struct.rxml_attrib_node*, i64, %struct.rxml_attrib_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxml_node*)* @rxml_free_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxml_free_node(%struct.rxml_node* %0) #0 {
  %2 = alloca %struct.rxml_node*, align 8
  %3 = alloca %struct.rxml_node*, align 8
  %4 = alloca %struct.rxml_attrib_node*, align 8
  %5 = alloca %struct.rxml_node*, align 8
  %6 = alloca %struct.rxml_attrib_node*, align 8
  store %struct.rxml_node* %0, %struct.rxml_node** %2, align 8
  store %struct.rxml_node* null, %struct.rxml_node** %3, align 8
  store %struct.rxml_attrib_node* null, %struct.rxml_attrib_node** %4, align 8
  %7 = load %struct.rxml_node*, %struct.rxml_node** %2, align 8
  %8 = icmp ne %struct.rxml_node* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %97

10:                                               ; preds = %1
  %11 = load %struct.rxml_node*, %struct.rxml_node** %2, align 8
  %12 = getelementptr inbounds %struct.rxml_node, %struct.rxml_node* %11, i32 0, i32 5
  %13 = load %struct.rxml_node*, %struct.rxml_node** %12, align 8
  store %struct.rxml_node* %13, %struct.rxml_node** %3, align 8
  br label %14

14:                                               ; preds = %17, %10
  %15 = load %struct.rxml_node*, %struct.rxml_node** %3, align 8
  %16 = icmp ne %struct.rxml_node* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load %struct.rxml_node*, %struct.rxml_node** %3, align 8
  %19 = getelementptr inbounds %struct.rxml_node, %struct.rxml_node* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.rxml_node*
  store %struct.rxml_node* %21, %struct.rxml_node** %5, align 8
  %22 = load %struct.rxml_node*, %struct.rxml_node** %3, align 8
  call void @rxml_free_node(%struct.rxml_node* %22)
  %23 = load %struct.rxml_node*, %struct.rxml_node** %5, align 8
  store %struct.rxml_node* %23, %struct.rxml_node** %3, align 8
  br label %14

24:                                               ; preds = %14
  %25 = load %struct.rxml_node*, %struct.rxml_node** %2, align 8
  %26 = getelementptr inbounds %struct.rxml_node, %struct.rxml_node* %25, i32 0, i32 3
  %27 = load %struct.rxml_node*, %struct.rxml_node** %26, align 8
  %28 = bitcast %struct.rxml_node* %27 to %struct.rxml_attrib_node*
  store %struct.rxml_attrib_node* %28, %struct.rxml_attrib_node** %4, align 8
  br label %29

29:                                               ; preds = %69, %24
  %30 = load %struct.rxml_attrib_node*, %struct.rxml_attrib_node** %4, align 8
  %31 = icmp ne %struct.rxml_attrib_node* %30, null
  br i1 %31, label %32, label %71

32:                                               ; preds = %29
  store %struct.rxml_attrib_node* null, %struct.rxml_attrib_node** %6, align 8
  %33 = load %struct.rxml_attrib_node*, %struct.rxml_attrib_node** %4, align 8
  %34 = getelementptr inbounds %struct.rxml_attrib_node, %struct.rxml_attrib_node* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.rxml_attrib_node*
  store %struct.rxml_attrib_node* %36, %struct.rxml_attrib_node** %6, align 8
  %37 = load %struct.rxml_attrib_node*, %struct.rxml_attrib_node** %6, align 8
  %38 = icmp ne %struct.rxml_attrib_node* %37, null
  br i1 %38, label %39, label %69

39:                                               ; preds = %32
  %40 = load %struct.rxml_attrib_node*, %struct.rxml_attrib_node** %4, align 8
  %41 = getelementptr inbounds %struct.rxml_attrib_node, %struct.rxml_attrib_node* %40, i32 0, i32 3
  %42 = load %struct.rxml_attrib_node*, %struct.rxml_attrib_node** %41, align 8
  %43 = icmp ne %struct.rxml_attrib_node* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.rxml_attrib_node*, %struct.rxml_attrib_node** %4, align 8
  %46 = getelementptr inbounds %struct.rxml_attrib_node, %struct.rxml_attrib_node* %45, i32 0, i32 3
  %47 = load %struct.rxml_attrib_node*, %struct.rxml_attrib_node** %46, align 8
  %48 = bitcast %struct.rxml_attrib_node* %47 to %struct.rxml_node*
  %49 = call i32 @free(%struct.rxml_node* %48)
  br label %50

50:                                               ; preds = %44, %39
  %51 = load %struct.rxml_attrib_node*, %struct.rxml_attrib_node** %4, align 8
  %52 = getelementptr inbounds %struct.rxml_attrib_node, %struct.rxml_attrib_node* %51, i32 0, i32 2
  %53 = load %struct.rxml_attrib_node*, %struct.rxml_attrib_node** %52, align 8
  %54 = icmp ne %struct.rxml_attrib_node* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.rxml_attrib_node*, %struct.rxml_attrib_node** %4, align 8
  %57 = getelementptr inbounds %struct.rxml_attrib_node, %struct.rxml_attrib_node* %56, i32 0, i32 2
  %58 = load %struct.rxml_attrib_node*, %struct.rxml_attrib_node** %57, align 8
  %59 = bitcast %struct.rxml_attrib_node* %58 to %struct.rxml_node*
  %60 = call i32 @free(%struct.rxml_node* %59)
  br label %61

61:                                               ; preds = %55, %50
  %62 = load %struct.rxml_attrib_node*, %struct.rxml_attrib_node** %4, align 8
  %63 = icmp ne %struct.rxml_attrib_node* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.rxml_attrib_node*, %struct.rxml_attrib_node** %4, align 8
  %66 = bitcast %struct.rxml_attrib_node* %65 to %struct.rxml_node*
  %67 = call i32 @free(%struct.rxml_node* %66)
  br label %68

68:                                               ; preds = %64, %61
  br label %69

69:                                               ; preds = %68, %32
  %70 = load %struct.rxml_attrib_node*, %struct.rxml_attrib_node** %6, align 8
  store %struct.rxml_attrib_node* %70, %struct.rxml_attrib_node** %4, align 8
  br label %29

71:                                               ; preds = %29
  %72 = load %struct.rxml_node*, %struct.rxml_node** %2, align 8
  %73 = getelementptr inbounds %struct.rxml_node, %struct.rxml_node* %72, i32 0, i32 1
  %74 = load %struct.rxml_node*, %struct.rxml_node** %73, align 8
  %75 = icmp ne %struct.rxml_node* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.rxml_node*, %struct.rxml_node** %2, align 8
  %78 = getelementptr inbounds %struct.rxml_node, %struct.rxml_node* %77, i32 0, i32 1
  %79 = load %struct.rxml_node*, %struct.rxml_node** %78, align 8
  %80 = call i32 @free(%struct.rxml_node* %79)
  br label %81

81:                                               ; preds = %76, %71
  %82 = load %struct.rxml_node*, %struct.rxml_node** %2, align 8
  %83 = getelementptr inbounds %struct.rxml_node, %struct.rxml_node* %82, i32 0, i32 0
  %84 = load %struct.rxml_node*, %struct.rxml_node** %83, align 8
  %85 = icmp ne %struct.rxml_node* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.rxml_node*, %struct.rxml_node** %2, align 8
  %88 = getelementptr inbounds %struct.rxml_node, %struct.rxml_node* %87, i32 0, i32 0
  %89 = load %struct.rxml_node*, %struct.rxml_node** %88, align 8
  %90 = call i32 @free(%struct.rxml_node* %89)
  br label %91

91:                                               ; preds = %86, %81
  %92 = load %struct.rxml_node*, %struct.rxml_node** %2, align 8
  %93 = icmp ne %struct.rxml_node* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.rxml_node*, %struct.rxml_node** %2, align 8
  %96 = call i32 @free(%struct.rxml_node* %95)
  br label %97

97:                                               ; preds = %9, %94, %91
  ret void
}

declare dso_local i32 @free(%struct.rxml_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
