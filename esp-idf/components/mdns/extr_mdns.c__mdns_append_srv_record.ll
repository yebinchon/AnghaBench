; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_append_srv_record.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_append_srv_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8*, i8*, i32, i32, i32 }

@MDNS_DEFAULT_DOMAIN = common dso_local global i8* null, align 8
@MDNS_ANSWER_SRV = common dso_local global i32 0, align 4
@MDNS_ANSWER_SRV_TTL = common dso_local global i32 0, align 4
@_mdns_server = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_5__*, i32, i32)* @_mdns_append_srv_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mdns_append_srv_record(i32* %0, i32* %1, %struct.TYPE_5__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i8*], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %17 = icmp eq %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %135

19:                                               ; preds = %5
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %21 = call i8* @_mdns_get_service_instance_name(%struct.TYPE_5__* %20)
  %22 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  store i8* %21, i8** %22, align 16
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 1
  store i8* %25, i8** %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 2
  store i8* %29, i8** %30, align 16
  %31 = load i8*, i8** @MDNS_DEFAULT_DOMAIN, align 8
  %32 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 3
  store i8* %31, i8** %32, align 8
  %33 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  %34 = load i8*, i8** %33, align 16
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %135

37:                                               ; preds = %19
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  %41 = call i32 @_mdns_append_fqdn(i32* %38, i32* %39, i8** %40, i32 4)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %135

45:                                               ; preds = %37
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %13, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* @MDNS_ANSWER_SRV, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %58

56:                                               ; preds = %45
  %57 = load i32, i32* @MDNS_ANSWER_SRV_TTL, align 4
  br label %58

58:                                               ; preds = %56, %55
  %59 = phi i32 [ 0, %55 ], [ %57, %56 ]
  %60 = call i32 @_mdns_append_type(i32* %49, i32* %50, i32 %51, i32 %52, i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %135

64:                                               ; preds = %58
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %13, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 2
  store i32 %70, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @_mdns_append_u16(i32* %71, i32* %72, i32 %75)
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %14, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @_mdns_append_u16(i32* %81, i32* %82, i32 %85)
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %14, align 4
  %91 = load i32*, i32** %7, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @_mdns_append_u16(i32* %91, i32* %92, i32 %95)
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %101, 6
  br i1 %102, label %103, label %104

103:                                              ; preds = %64
  store i32 0, i32* %6, align 4
  br label %135

104:                                              ; preds = %64
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_mdns_server, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  store i8* %107, i8** %108, align 16
  %109 = load i8*, i8** @MDNS_DEFAULT_DOMAIN, align 8
  %110 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 1
  store i8* %109, i8** %110, align 8
  %111 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  %112 = load i8*, i8** %111, align 16
  %113 = call i64 @_str_null_or_empty(i8* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %104
  store i32 0, i32* %6, align 4
  br label %135

116:                                              ; preds = %104
  %117 = load i32*, i32** %7, align 8
  %118 = load i32*, i32** %8, align 8
  %119 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  %120 = call i32 @_mdns_append_fqdn(i32* %117, i32* %118, i8** %119, i32 2)
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %116
  store i32 0, i32* %6, align 4
  br label %135

124:                                              ; preds = %116
  %125 = load i32*, i32** %7, align 8
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 6
  %129 = call i32 @_mdns_set_u16(i32* %125, i32 %126, i32 %128)
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, 6
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %124, %123, %115, %103, %63, %44, %36, %18
  %136 = load i32, i32* %6, align 4
  ret i32 %136
}

declare dso_local i8* @_mdns_get_service_instance_name(%struct.TYPE_5__*) #1

declare dso_local i32 @_mdns_append_fqdn(i32*, i32*, i8**, i32) #1

declare dso_local i32 @_mdns_append_type(i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @_mdns_append_u16(i32*, i32*, i32) #1

declare dso_local i64 @_str_null_or_empty(i8*) #1

declare dso_local i32 @_mdns_set_u16(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
