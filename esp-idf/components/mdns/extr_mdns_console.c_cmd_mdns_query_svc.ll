; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns_console.c_cmd_mdns_query_svc.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns_console.c_cmd_mdns_query_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i8** }
%struct.TYPE_8__ = type { i8** }
%struct.TYPE_7__ = type { i8** }

@mdns_query_svc_args = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Query SVC: %s.%s.%s.local, Timeout: %d, Max Results: %d\0A\00", align 1
@MDNS_TYPE_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"ERROR: Query Failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"No results found!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @cmd_mdns_query_svc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_mdns_query_svc(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @arg_parse(i32 %14, i8** %15, i8** bitcast (%struct.TYPE_12__* @mdns_query_svc_args to i8**))
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i32, i32* @stderr, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @mdns_query_svc_args, i32 0, i32 5), align 8
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @arg_print_errors(i32 %20, i32 %21, i8* %24)
  store i32 1, i32* %3, align 4
  br label %90

26:                                               ; preds = %2
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @mdns_query_svc_args, i32 0, i32 4), align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %7, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @mdns_query_svc_args, i32 0, i32 3), align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %8, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @mdns_query_svc_args, i32 0, i32 2), align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %9, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @mdns_query_svc_args, i32 0, i32 1), align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @mdns_query_svc_args, i32 0, i32 0), align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp sle i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %26
  store i32 5000, i32* %10, align 4
  br label %55

55:                                               ; preds = %54, %26
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %11, align 4
  %60 = icmp sgt i32 %59, 255
  br i1 %60, label %61, label %62

61:                                               ; preds = %58, %55
  store i32 255, i32* %11, align 4
  br label %62

62:                                               ; preds = %61, %58
  %63 = load i8*, i8** %7, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %63, i8* %64, i8* %65, i32 %66, i32 %67)
  store i32* null, i32** %12, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load i32, i32* @MDNS_TYPE_ANY, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i64 @mdns_query(i8* %69, i8* %70, i8* %71, i32 %72, i32 %73, i32 %74, i32** %12)
  store i64 %75, i64* %13, align 8
  %76 = load i64, i64* %13, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %62
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %90

80:                                               ; preds = %62
  %81 = load i32*, i32** %12, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %90

85:                                               ; preds = %80
  %86 = load i32*, i32** %12, align 8
  %87 = call i32 @mdns_print_results(i32* %86)
  %88 = load i32*, i32** %12, align 8
  %89 = call i32 @mdns_query_results_free(i32* %88)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %85, %83, %78, %19
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @arg_parse(i32, i8**, i8**) #1

declare dso_local i32 @arg_print_errors(i32, i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @mdns_query(i8*, i8*, i8*, i32, i32, i32, i32**) #1

declare dso_local i32 @mdns_print_results(i32*) #1

declare dso_local i32 @mdns_query_results_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
