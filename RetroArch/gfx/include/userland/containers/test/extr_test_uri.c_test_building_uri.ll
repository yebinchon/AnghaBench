; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_uri.c_test_building_uri.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_test_uri.c_test_building_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8**, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Building URI <%s>\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"*** Failed to set scheme\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"*** Failed to set userinfo\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"*** Failed to set host\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"*** Failed to set port\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"*** Failed to set path\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"*** Failed to set fragment\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"*** Failed to add query\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @test_building_uri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_building_uri(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @LOG_INFO(i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @vc_uri_clear(i32* %13)
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @vc_uri_set_scheme(i32* %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %101

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @vc_uri_set_userinfo(i32* %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %101

32:                                               ; preds = %23
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @vc_uri_set_host(i32* %33, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %101

41:                                               ; preds = %32
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @vc_uri_set_port(i32* %42, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %41
  %49 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %101

50:                                               ; preds = %41
  %51 = load i32*, i32** %4, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @vc_uri_set_path(i32* %51, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %50
  %58 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %101

59:                                               ; preds = %50
  %60 = load i32*, i32** %4, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @vc_uri_set_fragment(i32* %60, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %59
  %67 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %101

68:                                               ; preds = %59
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i8**, i8*** %70, align 8
  store i8** %71, i8*** %6, align 8
  %72 = load i8**, i8*** %6, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i32 1
  store i8** %73, i8*** %6, align 8
  %74 = load i8*, i8** %72, align 8
  store i8* %74, i8** %7, align 8
  br label %75

75:                                               ; preds = %89, %68
  %76 = load i8*, i8** %7, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %93

78:                                               ; preds = %75
  %79 = load i8**, i8*** %6, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i32 1
  store i8** %80, i8*** %6, align 8
  %81 = load i8*, i8** %79, align 8
  store i8* %81, i8** %8, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 @vc_uri_add_query(i32* %82, i8* %83, i8* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %78
  %88 = call i32 @LOG_ERROR(i32* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %101

89:                                               ; preds = %78
  %90 = load i8**, i8*** %6, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i32 1
  store i8** %91, i8*** %6, align 8
  %92 = load i8*, i8** %90, align 8
  store i8* %92, i8** %7, align 8
  br label %75

93:                                               ; preds = %75
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @dump_uri(i32* %94)
  %96 = load i32*, i32** %4, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @check_uri(i32* %96, i32 %99)
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %93, %87, %66, %57, %48, %39, %30, %21
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @LOG_INFO(i32*, i8*, i32) #1

declare dso_local i32 @vc_uri_clear(i32*) #1

declare dso_local i32 @vc_uri_set_scheme(i32*, i32) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*) #1

declare dso_local i32 @vc_uri_set_userinfo(i32*, i32) #1

declare dso_local i32 @vc_uri_set_host(i32*, i32) #1

declare dso_local i32 @vc_uri_set_port(i32*, i32) #1

declare dso_local i32 @vc_uri_set_path(i32*, i32) #1

declare dso_local i32 @vc_uri_set_fragment(i32*, i32) #1

declare dso_local i32 @vc_uri_add_query(i32*, i8*, i8*) #1

declare dso_local i32 @dump_uri(i32*) #1

declare dso_local i32 @check_uri(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
