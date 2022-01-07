; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_list_deep_copy.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_list_deep_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.item_file* }
%struct.item_file = type { i32*, i32*, i32*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_9__*, i64, i64)* @xmb_list_deep_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_list_deep_copy(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.item_file*, align 8
  %13 = alloca %struct.item_file*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %10, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = ptrtoint %struct.TYPE_9__* %17 to i64
  store i64 %18, i64* %11, align 8
  %19 = call i32 @menu_animation_kill_by_tag(i64* %11)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = call i32 @xmb_free_list_nodes(%struct.TYPE_9__* %20, i32 1)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = call i32 @file_list_clear(%struct.TYPE_9__* %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = add i64 %25, 1
  %27 = load i64, i64* %7, align 8
  %28 = sub i64 %26, %27
  %29 = call i32 @file_list_reserve(%struct.TYPE_9__* %24, i64 %28)
  %30 = load i64, i64* %7, align 8
  store i64 %30, i64* %9, align 8
  br label %31

31:                                               ; preds = %126, %4
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp ule i64 %32, %33
  br i1 %34, label %35, label %129

35:                                               ; preds = %31
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load %struct.item_file*, %struct.item_file** %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds %struct.item_file, %struct.item_file* %38, i64 %39
  store %struct.item_file* %40, %struct.item_file** %12, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load %struct.item_file*, %struct.item_file** %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds %struct.item_file, %struct.item_file* %43, i64 %44
  store %struct.item_file* %45, %struct.item_file** %13, align 8
  %46 = load %struct.item_file*, %struct.item_file** %13, align 8
  %47 = getelementptr inbounds %struct.item_file, %struct.item_file* %46, i32 0, i32 4
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %14, align 8
  %49 = load %struct.item_file*, %struct.item_file** %13, align 8
  %50 = getelementptr inbounds %struct.item_file, %struct.item_file* %49, i32 0, i32 3
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %15, align 8
  %52 = load %struct.item_file*, %struct.item_file** %12, align 8
  %53 = load %struct.item_file*, %struct.item_file** %13, align 8
  %54 = bitcast %struct.item_file* %52 to i8*
  %55 = bitcast %struct.item_file* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 40, i1 false)
  %56 = load %struct.item_file*, %struct.item_file** %12, align 8
  %57 = getelementptr inbounds %struct.item_file, %struct.item_file* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @string_is_empty(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %35
  br label %67

62:                                               ; preds = %35
  %63 = load %struct.item_file*, %struct.item_file** %12, align 8
  %64 = getelementptr inbounds %struct.item_file, %struct.item_file* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = call i32* @strdup(i32* %65)
  br label %67

67:                                               ; preds = %62, %61
  %68 = phi i32* [ null, %61 ], [ %66, %62 ]
  %69 = load %struct.item_file*, %struct.item_file** %12, align 8
  %70 = getelementptr inbounds %struct.item_file, %struct.item_file* %69, i32 0, i32 2
  store i32* %68, i32** %70, align 8
  %71 = load %struct.item_file*, %struct.item_file** %12, align 8
  %72 = getelementptr inbounds %struct.item_file, %struct.item_file* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i64 @string_is_empty(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %82

77:                                               ; preds = %67
  %78 = load %struct.item_file*, %struct.item_file** %12, align 8
  %79 = getelementptr inbounds %struct.item_file, %struct.item_file* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call i32* @strdup(i32* %80)
  br label %82

82:                                               ; preds = %77, %76
  %83 = phi i32* [ null, %76 ], [ %81, %77 ]
  %84 = load %struct.item_file*, %struct.item_file** %12, align 8
  %85 = getelementptr inbounds %struct.item_file, %struct.item_file* %84, i32 0, i32 1
  store i32* %83, i32** %85, align 8
  %86 = load %struct.item_file*, %struct.item_file** %12, align 8
  %87 = getelementptr inbounds %struct.item_file, %struct.item_file* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i64 @string_is_empty(i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %97

92:                                               ; preds = %82
  %93 = load %struct.item_file*, %struct.item_file** %12, align 8
  %94 = getelementptr inbounds %struct.item_file, %struct.item_file* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i32* @strdup(i32* %95)
  br label %97

97:                                               ; preds = %92, %91
  %98 = phi i32* [ null, %91 ], [ %96, %92 ]
  %99 = load %struct.item_file*, %struct.item_file** %12, align 8
  %100 = getelementptr inbounds %struct.item_file, %struct.item_file* %99, i32 0, i32 0
  store i32* %98, i32** %100, align 8
  %101 = load i8*, i8** %14, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %97
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load i8*, i8** %14, align 8
  %107 = bitcast i8* %106 to i32*
  %108 = call i64 @xmb_copy_node(i32* %107)
  %109 = inttoptr i64 %108 to i8*
  %110 = call i32 @file_list_set_userdata(%struct.TYPE_9__* %104, i64 %105, i8* %109)
  br label %111

111:                                              ; preds = %103, %97
  %112 = load i8*, i8** %15, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = call i8* @malloc(i32 4)
  store i8* %115, i8** %16, align 8
  %116 = load i8*, i8** %16, align 8
  %117 = load i8*, i8** %15, align 8
  %118 = call i32 @memcpy(i8* %116, i8* %117, i32 4)
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %120 = load i64, i64* %10, align 8
  %121 = load i8*, i8** %16, align 8
  %122 = call i32 @file_list_set_actiondata(%struct.TYPE_9__* %119, i64 %120, i8* %121)
  br label %123

123:                                              ; preds = %114, %111
  %124 = load i64, i64* %10, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %10, align 8
  br label %126

126:                                              ; preds = %123
  %127 = load i64, i64* %9, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %9, align 8
  br label %31

129:                                              ; preds = %31
  %130 = load i64, i64* %10, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  ret void
}

declare dso_local i32 @menu_animation_kill_by_tag(i64*) #1

declare dso_local i32 @xmb_free_list_nodes(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @file_list_clear(%struct.TYPE_9__*) #1

declare dso_local i32 @file_list_reserve(%struct.TYPE_9__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @string_is_empty(i32*) #1

declare dso_local i32* @strdup(i32*) #1

declare dso_local i32 @file_list_set_userdata(%struct.TYPE_9__*, i64, i8*) #1

declare dso_local i64 @xmb_copy_node(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @file_list_set_actiondata(%struct.TYPE_9__*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
