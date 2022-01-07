; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_stub_gssapi.c_gss_display_status.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_stub_gssapi.c_gss_display_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64 }

@__const.gss_display_status.maj_str = private unnamed_addr constant [15 x i8] c"Stub GSS error\00", align 1
@GSS_LAST = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@min_err_table = common dso_local global i8** null, align 8
@GSS_S_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_display_status(i64* %0, i64 %1, i32 %2, i32 %3, i64* %4, %struct.TYPE_3__* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca [15 x i8], align 1
  store i64* %0, i64** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %13, align 8
  %15 = bitcast [15 x i8]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([15 x i8], [15 x i8]* @__const.gss_display_status.maj_str, i32 0, i32 0), i64 15, i1 false)
  %16 = load i32, i32* %11, align 4
  %17 = load i64*, i64** %8, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i64*, i64** %8, align 8
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %19, %6
  %22 = load i64*, i64** %12, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i64*, i64** %12, align 8
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %24, %21
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %29, label %73

29:                                               ; preds = %26
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @GSS_LAST, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %38, i64* %7, align 8
  br label %75

39:                                               ; preds = %29
  %40 = load i32, i32* %10, align 4
  switch i32 %40, label %56 [
    i32 129, label %41
    i32 128, label %47
  ]

41:                                               ; preds = %39
  %42 = getelementptr inbounds [15 x i8], [15 x i8]* %14, i64 0, i64 0
  %43 = call i8* @strdup(i8* %42)
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32* %44, i32** %46, align 8
  br label %58

47:                                               ; preds = %39
  %48 = load i8**, i8*** @min_err_table, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds i8*, i8** %48, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @strdup(i8* %51)
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32* %53, i32** %55, align 8
  br label %58

56:                                               ; preds = %39
  %57 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %57, i64* %7, align 8
  br label %75

58:                                               ; preds = %47, %41
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i64 @strlen(i32* %66)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  br label %72

70:                                               ; preds = %58
  %71 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %71, i64* %7, align 8
  br label %75

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %26
  %74 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %74, i64* %7, align 8
  br label %75

75:                                               ; preds = %73, %70, %56, %37
  %76 = load i64, i64* %7, align 8
  ret i64 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @strdup(i8*) #2

declare dso_local i64 @strlen(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
