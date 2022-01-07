; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/ogg/extr_framing.c__os_lacing_expand.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/ogg/extr_framing.c__os_lacing_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i8*, i8* }

@LONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64)* @_os_lacing_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_os_lacing_expand(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = sub nsw i64 %10, %11
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp sle i64 %12, %15
  br i1 %16, label %17, label %75

17:                                               ; preds = %2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @LONG_MAX, align 8
  %22 = load i64, i64* %5, align 8
  %23 = sub nsw i64 %21, %22
  %24 = icmp sgt i64 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = call i32 @ogg_stream_clear(%struct.TYPE_4__* %26)
  store i32 -1, i32* %3, align 4
  br label %76

28:                                               ; preds = %17
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = add nsw i64 %31, %32
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @LONG_MAX, align 8
  %36 = sub nsw i64 %35, 32
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i64, i64* %6, align 8
  %40 = add nsw i64 %39, 32
  store i64 %40, i64* %6, align 8
  br label %41

41:                                               ; preds = %38, %28
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load i8*, i8** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = mul i64 %45, 1
  %47 = call i8* @_ogg_realloc(i8* %44, i64 %46)
  store i8* %47, i8** %7, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %41
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = call i32 @ogg_stream_clear(%struct.TYPE_4__* %51)
  store i32 -1, i32* %3, align 4
  br label %76

53:                                               ; preds = %41
  %54 = load i8*, i8** %7, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = mul i64 %60, 1
  %62 = call i8* @_ogg_realloc(i8* %59, i64 %61)
  store i8* %62, i8** %7, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %53
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = call i32 @ogg_stream_clear(%struct.TYPE_4__* %66)
  store i32 -1, i32* %3, align 4
  br label %76

68:                                               ; preds = %53
  %69 = load i8*, i8** %7, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %68, %2
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %65, %50, %25
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @ogg_stream_clear(%struct.TYPE_4__*) #1

declare dso_local i8* @_ogg_realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
