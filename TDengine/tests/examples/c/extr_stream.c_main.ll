; ModuleID = '/home/carl/AnghaBench/TDengine/tests/examples/c/extr_stream.c_main.c'
source_filename = "/home/carl/AnghaBench/TDengine/tests/examples/c/extr_stream.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [36 x i8] c"usage: %s server-ip dbname tblname\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"failed to malloc\0A\00", align 1
@insert_rows = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"taosdata\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to connet to server:%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [88 x i8] c"please input stream SQL:[e.g., select count(*) from tblname interval(5s) sliding(2s);]\0A\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"input NULL stream SQL, so exit!\0A\00", align 1
@streamCallBack = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"failed to create stream\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"presss any key to exit\0A\00", align 1
@g_thread_exit_flag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [64 x i8], align 16
  %8 = alloca [64 x i8], align 16
  %9 = alloca [1024 x i8], align 16
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = bitcast [1024 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 1024, i1 false)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 4
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = call i32 @exit(i32 0) #4
  unreachable

22:                                               ; preds = %2
  %23 = call i32 (...) @taos_init()
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 2
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strcpy(i8* %24, i8* %27)
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 3
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strcpy(i8* %29, i8* %32)
  %34 = call i64 @malloc(i32 24)
  %35 = inttoptr i64 %34 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %10, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %37 = icmp eq %struct.TYPE_5__* null, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %22
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @exit(i32 1) #4
  unreachable

41:                                               ; preds = %22
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %43 = call i32 @memset(%struct.TYPE_5__* %42, i32 0, i32 24)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strcpy(i8* %46, i8* %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %55 = call i32 @strcpy(i8* %53, i8* %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %60 = call i32 @strcpy(i8* %58, i8* %59)
  %61 = load i64, i64* @insert_rows, align 8
  %62 = inttoptr i64 %61 to i8* (i8*)*
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %64 = call i32 @pthread_create(i32* %11, i32* null, i8* (i8*)* %62, %struct.TYPE_5__* %63)
  %65 = call i32 @sleep(i32 3)
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %70 = call i32* @taos_connect(i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %69, i32 0)
  store i32* %70, i32** %6, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %41
  %74 = load i8**, i8*** %5, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %76)
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %79 = call i32 @free(%struct.TYPE_5__* %78)
  %80 = call i32 @exit(i32 1) #4
  unreachable

81:                                               ; preds = %41
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.5, i64 0, i64 0))
  %83 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %84 = load i32, i32* @stdin, align 4
  %85 = call i32 @fgets(i8* %83, i32 1024, i32 %84)
  %86 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %87 = load i8, i8* %86, align 16
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %81
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %93 = call i32 @free(%struct.TYPE_5__* %92)
  %94 = call i32 @exit(i32 1) #4
  unreachable

95:                                               ; preds = %81
  %96 = load i32*, i32** %6, align 8
  %97 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %98 = load i32, i32* @streamCallBack, align 4
  %99 = call i32* @taos_open_stream(i32* %96, i8* %97, i32 %98, i32 0, i32* null, i32* null)
  store i32* %99, i32** %12, align 8
  %100 = load i32*, i32** %12, align 8
  %101 = icmp eq i32* null, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %105 = call i32 @free(%struct.TYPE_5__* %104)
  %106 = call i32 @exit(i32 1) #4
  unreachable

107:                                              ; preds = %95
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %109 = call i32 (...) @getchar()
  %110 = load i32*, i32** %12, align 8
  %111 = call i32 @taos_close_stream(i32* %110)
  store i32 1, i32* @g_thread_exit_flag, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @pthread_join(i32 %112, i32* null)
  %114 = load i32*, i32** %6, align 8
  %115 = call i32 @taos_close(i32* %114)
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %117 = call i32 @free(%struct.TYPE_5__* %116)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @taos_init(...) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #2

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i8* (i8*)*, %struct.TYPE_5__*) #2

declare dso_local i32 @sleep(i32) #2

declare dso_local i32* @taos_connect(i8*, i8*, i8*, i8*, i32) #2

declare dso_local i32 @free(%struct.TYPE_5__*) #2

declare dso_local i32 @fgets(i8*, i32, i32) #2

declare dso_local i32* @taos_open_stream(i32*, i8*, i32, i32, i32*, i32*) #2

declare dso_local i32 @getchar(...) #2

declare dso_local i32 @taos_close_stream(i32*) #2

declare dso_local i32 @pthread_join(i32, i32*) #2

declare dso_local i32 @taos_close(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
