; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_reader.c_splice_discontinuity.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_reader.c_splice_discontinuity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (i32*, %struct.TYPE_12__*)* @splice_discontinuity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @splice_discontinuity(i32* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32* @get_splice_list(i32* %11, i32 %15)
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %77

19:                                               ; preds = %2
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = call i32 @hb_buffer_list_append(i32* %20, %struct.TYPE_12__* %21)
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %79

29:                                               ; preds = %19
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @hb_buffer_list_count(i32* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %73

34:                                               ; preds = %29
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @hb_buffer_list_size(i32* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call %struct.TYPE_12__* @hb_buffer_init(i32 %37)
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %9, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call %struct.TYPE_12__* @hb_buffer_list_head(i32* %39)
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %5, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  %45 = bitcast %struct.TYPE_11__* %42 to i8*
  %46 = bitcast %struct.TYPE_11__* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 16, i1 false)
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %51, %34
  %48 = load i32*, i32** %6, align 8
  %49 = call %struct.TYPE_12__* @hb_buffer_list_rem_head(i32* %48)
  store %struct.TYPE_12__* %49, %struct.TYPE_12__** %5, align 8
  %50 = icmp ne %struct.TYPE_12__* %49, null
  br i1 %50, label %51, label %71

51:                                               ; preds = %47
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @memcpy(i64 %57, i64 %60, i32 %63)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %10, align 4
  %70 = call i32 @hb_buffer_close(%struct.TYPE_12__** %5)
  br label %47

71:                                               ; preds = %47
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %72, %struct.TYPE_12__** %5, align 8
  br label %76

73:                                               ; preds = %29
  %74 = load i32*, i32** %6, align 8
  %75 = call %struct.TYPE_12__* @hb_buffer_list_clear(i32* %74)
  store %struct.TYPE_12__* %75, %struct.TYPE_12__** %5, align 8
  br label %76

76:                                               ; preds = %73, %71
  br label %77

77:                                               ; preds = %76, %2
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %78, %struct.TYPE_12__** %3, align 8
  br label %79

79:                                               ; preds = %77, %28
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %80
}

declare dso_local i32* @get_splice_list(i32*, i32) #1

declare dso_local i32 @hb_buffer_list_append(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @hb_buffer_list_count(i32*) #1

declare dso_local i32 @hb_buffer_list_size(i32*) #1

declare dso_local %struct.TYPE_12__* @hb_buffer_init(i32) #1

declare dso_local %struct.TYPE_12__* @hb_buffer_list_head(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_12__* @hb_buffer_list_rem_head(i32*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @hb_buffer_close(%struct.TYPE_12__**) #1

declare dso_local %struct.TYPE_12__* @hb_buffer_list_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
