; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_hiperfifo.c_sock_cb.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_hiperfifo.c_sock_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"OUT\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"INOUT\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"REMOVE\00", align 1
@MSG_OUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"socket callback: s=%d e=%p what=%s \00", align 1
@CURL_POLL_REMOVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Adding data: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Changing action from %s to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*, i8*)* @sock_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sock_cb(i32* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca [5 x i8*], align 16
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %11, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %12, align 8
  %18 = bitcast [5 x i8*]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 40, i1 false)
  %19 = bitcast i8* %18 to [5 x i8*]*
  %20 = getelementptr inbounds [5 x i8*], [5 x i8*]* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8** %20, align 16
  %21 = getelementptr inbounds [5 x i8*], [5 x i8*]* %19, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8** %21, align 8
  %22 = getelementptr inbounds [5 x i8*], [5 x i8*]* %19, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8** %22, align 16
  %23 = getelementptr inbounds [5 x i8*], [5 x i8*]* %19, i32 0, i32 3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8** %23, align 8
  %24 = getelementptr inbounds [5 x i8*], [5 x i8*]* %19, i32 0, i32 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8** %24, align 16
  %25 = load i32, i32* @MSG_OUT, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %26, i32* %27, i8* %31)
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @CURL_POLL_REMOVE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %5
  %37 = load i32, i32* @MSG_OUT, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %40 = call i32 @remsock(%struct.TYPE_4__* %39)
  br label %75

41:                                               ; preds = %5
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %43 = icmp ne %struct.TYPE_4__* %42, null
  br i1 %43, label %56, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @MSG_OUT, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* %7, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @addsock(i32 %51, i32* %52, i32 %53, i32* %54)
  br label %74

56:                                               ; preds = %41
  %57 = load i32, i32* @MSG_OUT, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %62, i8* %66)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32*, i32** %11, align 8
  %73 = call i32 @setsock(%struct.TYPE_4__* %68, i32 %69, i32* %70, i32 %71, i32* %72)
  br label %74

74:                                               ; preds = %56, %44
  br label %75

75:                                               ; preds = %74, %36
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @remsock(%struct.TYPE_4__*) #2

declare dso_local i32 @addsock(i32, i32*, i32, i32*) #2

declare dso_local i32 @setsock(%struct.TYPE_4__*, i32, i32*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
