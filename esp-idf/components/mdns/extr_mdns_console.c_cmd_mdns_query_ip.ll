; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns_console.c_cmd_mdns_query_ip.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns_console.c_cmd_mdns_query_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i8** }

@mdns_query_ip_args = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ERROR: Hostname not supplied\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Query IP: %s.local, Timeout: %d, Max Results: %d\0A\00", align 1
@MDNS_TYPE_ANY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"ERROR: Query Failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"No results found!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @cmd_mdns_query_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_mdns_query_ip(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @arg_parse(i32 %12, i8** %13, i8** bitcast (%struct.TYPE_8__* @mdns_query_ip_args to i8**))
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32, i32* @stderr, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @mdns_query_ip_args, i32 0, i32 3), align 8
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @arg_print_errors(i32 %18, i32 %19, i8* %22)
  store i32 1, i32* %3, align 4
  br label %84

24:                                               ; preds = %2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @mdns_query_ip_args, i32 0, i32 2), align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %7, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @mdns_query_ip_args, i32 0, i32 1), align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @mdns_query_ip_args, i32 0, i32 0), align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %24
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42, %24
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %84

49:                                               ; preds = %42
  %50 = load i32, i32* %8, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 1000, i32* %8, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  %58 = icmp sgt i32 %57, 255
  br i1 %58, label %59, label %60

59:                                               ; preds = %56, %53
  store i32 255, i32* %9, align 4
  br label %60

60:                                               ; preds = %59, %56
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %61, i32 %62, i32 %63)
  store i32* null, i32** %10, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* @MDNS_TYPE_ANY, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i64 @mdns_query(i8* %65, i32* null, i32* null, i32 %66, i32 %67, i32 %68, i32** %10)
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %60
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %84

74:                                               ; preds = %60
  %75 = load i32*, i32** %10, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %84

79:                                               ; preds = %74
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @mdns_print_results(i32* %80)
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @mdns_query_results_free(i32* %82)
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %79, %77, %72, %47, %17
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @arg_parse(i32, i8**, i8**) #1

declare dso_local i32 @arg_print_errors(i32, i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @mdns_query(i8*, i32*, i32*, i32, i32, i32, i32**) #1

declare dso_local i32 @mdns_print_results(i32*) #1

declare dso_local i32 @mdns_query_results_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
