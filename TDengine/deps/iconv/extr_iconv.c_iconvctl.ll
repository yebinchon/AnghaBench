; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_iconv.c_iconvctl.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_iconv.c_iconvctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.iconv_fallbacks, %struct.iconv_hooks, %struct.TYPE_3__, i32, i32 }
%struct.iconv_fallbacks = type { i32*, i32*, i32*, i32*, i32* }
%struct.iconv_hooks = type { i32*, i32*, i32* }
%struct.TYPE_3__ = type { i32 }

@unicode_loop_convert = common dso_local global i32 0, align 4
@wchar_id_loop_convert = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iconvctl(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %119 [
    i32 128, label %13
    i32 133, label %41
    i32 129, label %47
    i32 134, label %56
    i32 132, label %62
    i32 130, label %71
    i32 131, label %92
  ]

13:                                               ; preds = %3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @unicode_loop_convert, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %20, %13
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @wchar_id_loop_convert, align 4
  %34 = icmp eq i32 %32, %33
  br label %35

35:                                               ; preds = %28, %20
  %36 = phi i1 [ true, %20 ], [ %34, %28 ]
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  %39 = load i8*, i8** %7, align 8
  %40 = bitcast i8* %39 to i32*
  store i32 %38, i32* %40, align 4
  store i32 0, i32* %4, align 4
  br label %121

41:                                               ; preds = %3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = bitcast i8* %45 to i32*
  store i32 %44, i32* %46, align 4
  store i32 0, i32* %4, align 4
  br label %121

47:                                               ; preds = %3
  %48 = load i8*, i8** %7, align 8
  %49 = bitcast i8* %48 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  store i32 0, i32* %4, align 4
  br label %121

56:                                               ; preds = %3
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = bitcast i8* %60 to i32*
  store i32 %59, i32* %61, align 4
  store i32 0, i32* %4, align 4
  br label %121

62:                                               ; preds = %3
  %63 = load i8*, i8** %7, align 8
  %64 = bitcast i8* %63 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %4, align 4
  br label %121

71:                                               ; preds = %3
  %72 = load i8*, i8** %7, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load i8*, i8** %7, align 8
  %78 = bitcast i8* %77 to %struct.iconv_hooks*
  %79 = bitcast %struct.iconv_hooks* %76 to i8*
  %80 = bitcast %struct.iconv_hooks* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 24, i1 false)
  br label %91

81:                                               ; preds = %71
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.iconv_hooks, %struct.iconv_hooks* %83, i32 0, i32 2
  store i32* null, i32** %84, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.iconv_hooks, %struct.iconv_hooks* %86, i32 0, i32 1
  store i32* null, i32** %87, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.iconv_hooks, %struct.iconv_hooks* %89, i32 0, i32 0
  store i32* null, i32** %90, align 8
  br label %91

91:                                               ; preds = %81, %74
  store i32 0, i32* %4, align 4
  br label %121

92:                                               ; preds = %3
  %93 = load i8*, i8** %7, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i8*, i8** %7, align 8
  %99 = bitcast i8* %98 to %struct.iconv_fallbacks*
  %100 = bitcast %struct.iconv_fallbacks* %97 to i8*
  %101 = bitcast %struct.iconv_fallbacks* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %100, i8* align 8 %101, i64 40, i1 false)
  br label %118

102:                                              ; preds = %92
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.iconv_fallbacks, %struct.iconv_fallbacks* %104, i32 0, i32 4
  store i32* null, i32** %105, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.iconv_fallbacks, %struct.iconv_fallbacks* %107, i32 0, i32 3
  store i32* null, i32** %108, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.iconv_fallbacks, %struct.iconv_fallbacks* %110, i32 0, i32 2
  store i32* null, i32** %111, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.iconv_fallbacks, %struct.iconv_fallbacks* %113, i32 0, i32 1
  store i32* null, i32** %114, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.iconv_fallbacks, %struct.iconv_fallbacks* %116, i32 0, i32 0
  store i32* null, i32** %117, align 8
  br label %118

118:                                              ; preds = %102, %95
  store i32 0, i32* %4, align 4
  br label %121

119:                                              ; preds = %3
  %120 = load i32, i32* @EINVAL, align 4
  store i32 %120, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %121

121:                                              ; preds = %119, %118, %91, %62, %56, %47, %41, %35
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
