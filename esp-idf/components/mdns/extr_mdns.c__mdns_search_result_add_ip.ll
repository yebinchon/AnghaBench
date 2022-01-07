; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_search_result_add_ip.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_search_result_add_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_14__*, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i64 }

@MDNS_TYPE_A = common dso_local global i64 0, align 8
@IPADDR_TYPE_V4 = common dso_local global i64 0, align 8
@MDNS_TYPE_AAAA = common dso_local global i64 0, align 8
@IPADDR_TYPE_V6 = common dso_local global i64 0, align 8
@MDNS_TYPE_ANY = common dso_local global i64 0, align 8
@HOOK_MALLOC_FAILED = common dso_local global i32 0, align 4
@MDNS_TYPE_PTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i8*, %struct.TYPE_16__*, i64, i64)* @_mdns_search_result_add_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_mdns_search_result_add_ip(%struct.TYPE_13__* %0, i8* %1, %struct.TYPE_16__* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %12, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MDNS_TYPE_A, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IPADDR_TYPE_V4, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %42, label %24

24:                                               ; preds = %18, %5
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MDNS_TYPE_AAAA, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IPADDR_TYPE_V6, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30, %24
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MDNS_TYPE_ANY, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %127

42:                                               ; preds = %36, %30, %18
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %11, align 8
  br label %46

46:                                               ; preds = %65, %42
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %48 = icmp ne %struct.TYPE_14__* %47, null
  br i1 %48, label %49, label %69

49:                                               ; preds = %46
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %64 = call i32 @_mdns_result_add_ip(%struct.TYPE_14__* %62, %struct.TYPE_16__* %63)
  br label %175

65:                                               ; preds = %55, %49
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  store %struct.TYPE_14__* %68, %struct.TYPE_14__** %11, align 8
  br label %46

69:                                               ; preds = %46
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %77, %80
  br i1 %81, label %82, label %126

82:                                               ; preds = %74, %69
  %83 = call i64 @malloc(i32 40)
  %84 = inttoptr i64 %83 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %84, %struct.TYPE_14__** %11, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %86 = icmp ne %struct.TYPE_14__* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @HOOK_MALLOC_FAILED, align 4
  br label %175

89:                                               ; preds = %82
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %91 = call i32 @memset(%struct.TYPE_14__* %90, i32 0, i32 40)
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %93 = call %struct.TYPE_15__* @_mdns_result_addr_create_ip(%struct.TYPE_16__* %92)
  store %struct.TYPE_15__* %93, %struct.TYPE_15__** %12, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %95 = icmp ne %struct.TYPE_15__* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %89
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %98 = call i32 @free(%struct.TYPE_14__* %97)
  br label %175

99:                                               ; preds = %89
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 4
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %101, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  store %struct.TYPE_15__* %102, %struct.TYPE_15__** %104, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 4
  store %struct.TYPE_15__* %105, %struct.TYPE_15__** %107, align 8
  %108 = load i64, i64* %9, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load i64, i64* %10, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 2
  store %struct.TYPE_14__* %116, %struct.TYPE_14__** %118, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 3
  store %struct.TYPE_14__* %119, %struct.TYPE_14__** %121, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %123, align 8
  br label %126

126:                                              ; preds = %99, %74
  br label %175

127:                                              ; preds = %36
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @MDNS_TYPE_PTR, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %174

133:                                              ; preds = %127
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  store %struct.TYPE_14__* %136, %struct.TYPE_14__** %11, align 8
  br label %137

137:                                              ; preds = %169, %133
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %139 = icmp ne %struct.TYPE_14__* %138, null
  br i1 %139, label %140, label %173

140:                                              ; preds = %137
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %9, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %169

146:                                              ; preds = %140
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %10, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %169

152:                                              ; preds = %146
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @_str_null_or_empty(i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %169, label %158

158:                                              ; preds = %152
  %159 = load i8*, i8** %7, align 8
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @strcasecmp(i8* %159, i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %158
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %168 = call i32 @_mdns_result_add_ip(%struct.TYPE_14__* %166, %struct.TYPE_16__* %167)
  br label %173

169:                                              ; preds = %158, %152, %146, %140
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %171, align 8
  store %struct.TYPE_14__* %172, %struct.TYPE_14__** %11, align 8
  br label %137

173:                                              ; preds = %165, %137
  br label %174

174:                                              ; preds = %173, %127
  br label %175

175:                                              ; preds = %61, %87, %96, %174, %126
  ret void
}

declare dso_local i32 @_mdns_result_add_ip(%struct.TYPE_14__*, %struct.TYPE_16__*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local %struct.TYPE_15__* @_mdns_result_addr_create_ip(%struct.TYPE_16__*) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

declare dso_local i32 @_str_null_or_empty(i32) #1

declare dso_local i32 @strcasecmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
