; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_append_txt_record.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_append_txt_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i8*, %struct.TYPE_5__* }

@MDNS_DEFAULT_DOMAIN = common dso_local global i8* null, align 8
@MDNS_ANSWER_TXT = common dso_local global i32 0, align 4
@MDNS_ANSWER_TXT_TTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@HOOK_MALLOC_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32*, %struct.TYPE_6__*, i32, i32)* @_mdns_append_txt_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mdns_append_txt_record(i64* %0, i32* %1, %struct.TYPE_6__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i8*], align 16
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_5__*, align 8
  %19 = alloca i64, align 8
  store i64* %0, i64** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = icmp eq %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %152

23:                                               ; preds = %5
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %25 = call i8* @_mdns_get_service_instance_name(%struct.TYPE_6__* %24)
  %26 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  store i8* %25, i8** %26, align 16
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 1
  store i8* %29, i8** %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 2
  store i8* %33, i8** %34, align 16
  %35 = load i8*, i8** @MDNS_DEFAULT_DOMAIN, align 8
  %36 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 3
  store i8* %35, i8** %36, align 8
  %37 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  %38 = load i8*, i8** %37, align 16
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %152

41:                                               ; preds = %23
  %42 = load i64*, i64** %7, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  %45 = call i64 @_mdns_append_fqdn(i64* %42, i32* %43, i8** %44, i32 4)
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %14, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %152

49:                                               ; preds = %41
  %50 = load i64, i64* %14, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %13, align 4
  %55 = load i64*, i64** %7, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* @MDNS_ANSWER_TXT, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %64

62:                                               ; preds = %49
  %63 = load i32, i32* @MDNS_ANSWER_TXT_TTL, align 4
  br label %64

64:                                               ; preds = %62, %61
  %65 = phi i32 [ 0, %61 ], [ %63, %62 ]
  %66 = call i64 @_mdns_append_type(i64* %55, i32* %56, i32 %57, i32 %58, i32 %65)
  store i64 %66, i64* %14, align 8
  %67 = load i64, i64* %14, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %152

70:                                               ; preds = %64
  %71 = load i64, i64* %14, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %13, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %77, 2
  store i32 %78, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  store %struct.TYPE_5__* %81, %struct.TYPE_5__** %18, align 8
  br label %82

82:                                               ; preds = %126, %70
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %84 = icmp ne %struct.TYPE_5__* %83, null
  br i1 %84, label %85, label %130

85:                                               ; preds = %82
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @strlen(i8* %88)
  %90 = add nsw i64 2, %89
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @strlen(i8* %93)
  %95 = add nsw i64 %90, %94
  %96 = call i64 @malloc(i64 %95)
  %97 = inttoptr i64 %96 to i8*
  store i8* %97, i8** %17, align 8
  %98 = load i8*, i8** %17, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %124

100:                                              ; preds = %85
  %101 = load i8*, i8** %17, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @sprintf(i8* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %104, i8* %107)
  %109 = load i64*, i64** %7, align 8
  %110 = load i32*, i32** %8, align 8
  %111 = load i8*, i8** %17, align 8
  %112 = call i64 @_mdns_append_string(i64* %109, i32* %110, i8* %111)
  store i64 %112, i64* %19, align 8
  %113 = load i8*, i8** %17, align 8
  %114 = call i32 @free(i8* %113)
  %115 = load i64, i64* %19, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %100
  store i32 0, i32* %6, align 4
  br label %152

118:                                              ; preds = %100
  %119 = load i64, i64* %19, align 8
  %120 = load i32, i32* %16, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %16, align 4
  br label %126

124:                                              ; preds = %85
  %125 = load i32, i32* @HOOK_MALLOC_FAILED, align 4
  br label %126

126:                                              ; preds = %124, %118
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  store %struct.TYPE_5__* %129, %struct.TYPE_5__** %18, align 8
  br label %82

130:                                              ; preds = %82
  %131 = load i32, i32* %16, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %143, label %133

133:                                              ; preds = %130
  store i32 1, i32* %16, align 4
  %134 = load i64*, i64** %7, align 8
  %135 = load i32*, i32** %8, align 8
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %134, i64 %137
  store i64 0, i64* %138, align 8
  %139 = load i32*, i32** %8, align 8
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  %142 = load i32*, i32** %8, align 8
  store i32 %141, i32* %142, align 4
  br label %143

143:                                              ; preds = %133, %130
  %144 = load i64*, i64** %7, align 8
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %16, align 4
  %147 = call i32 @_mdns_set_u16(i64* %144, i32 %145, i32 %146)
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %13, align 4
  store i32 %151, i32* %6, align 4
  br label %152

152:                                              ; preds = %143, %117, %69, %48, %40, %22
  %153 = load i32, i32* %6, align 4
  ret i32 %153
}

declare dso_local i8* @_mdns_get_service_instance_name(%struct.TYPE_6__*) #1

declare dso_local i64 @_mdns_append_fqdn(i64*, i32*, i8**, i32) #1

declare dso_local i64 @_mdns_append_type(i64*, i32*, i32, i32, i32) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i64 @_mdns_append_string(i64*, i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @_mdns_set_u16(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
