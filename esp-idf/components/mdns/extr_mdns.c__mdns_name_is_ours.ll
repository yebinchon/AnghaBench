; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_name_is_ours.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_name_is_ours.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i32 }

@MDNS_DEFAULT_DOMAIN = common dso_local global i8* null, align 8
@_mdns_server = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @_mdns_name_is_ours to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mdns_name_is_ours(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i64 @_str_null_or_empty(i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load i8*, i8** @MDNS_DEFAULT_DOMAIN, align 8
  %16 = call i64 @strcasecmp(i8* %14, i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11, %1
  store i32 0, i32* %2, align 4
  br label %102

19:                                               ; preds = %11
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @_str_null_or_empty(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %19
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @_str_null_or_empty(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %25
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @_str_null_or_empty(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %31
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @_mdns_server, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @_str_null_or_empty(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %37
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** @_mdns_server, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @strcasecmp(i8* %46, i8* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i32 1, i32* %2, align 4
  br label %102

53:                                               ; preds = %43, %37, %31
  store i32 0, i32* %2, align 4
  br label %102

54:                                               ; preds = %25, %19
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @_str_null_or_empty(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @_str_null_or_empty(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60, %54
  store i32 0, i32* %2, align 4
  br label %102

67:                                               ; preds = %60
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = call %struct.TYPE_6__* @_mdns_get_service_item(i8* %70, i8* %73)
  store %struct.TYPE_6__* %74, %struct.TYPE_6__** %4, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = icmp ne %struct.TYPE_6__* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %102

78:                                               ; preds = %67
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @_str_null_or_empty(i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 1, i32* %2, align 4
  br label %102

85:                                               ; preds = %78
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @_mdns_get_service_instance_name(i32 %88)
  store i8* %89, i8** %5, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  store i32 0, i32* %2, align 4
  br label %102

93:                                               ; preds = %85
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = call i64 @strcasecmp(i8* %96, i8* %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  store i32 1, i32* %2, align 4
  br label %102

101:                                              ; preds = %93
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %101, %100, %92, %84, %77, %66, %53, %52, %18
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i64 @_str_null_or_empty(i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local %struct.TYPE_6__* @_mdns_get_service_item(i8*, i8*) #1

declare dso_local i8* @_mdns_get_service_instance_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
