; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_sess.c_httpd_sess_delete.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_sess.c_httpd_sess_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httpd_data = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 (i32*)*, i32*, i32 (i32*)*, i32* }
%struct.TYPE_3__ = type { i32, i32 (%struct.httpd_data.0*, i32)* }
%struct.httpd_data.0 = type opaque

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fd = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @httpd_sess_delete(%struct.httpd_data* %0, i32 %1) #0 {
  %3 = alloca %struct.httpd_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.httpd_data* %0, %struct.httpd_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @TAG, align 4
  %8 = call i32 @LOG_FMT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @ESP_LOGD(i32 %7, i32 %8, i32 %9)
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %199, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %14 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %202

18:                                               ; preds = %11
  %19 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %20 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %178

29:                                               ; preds = %18
  %30 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %31 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32 (%struct.httpd_data.0*, i32)*, i32 (%struct.httpd_data.0*, i32)** %32, align 8
  %34 = icmp ne i32 (%struct.httpd_data.0*, i32)* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %37 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32 (%struct.httpd_data.0*, i32)*, i32 (%struct.httpd_data.0*, i32)** %38, align 8
  %40 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %41 = bitcast %struct.httpd_data* %40 to %struct.httpd_data.0*
  %42 = load i32, i32* %4, align 4
  %43 = call i32 %39(%struct.httpd_data.0* %41, i32 %42)
  br label %44

44:                                               ; preds = %35, %29
  %45 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %46 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %107

54:                                               ; preds = %44
  %55 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %56 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  %62 = load i32 (i32*)*, i32 (i32*)** %61, align 8
  %63 = icmp ne i32 (i32*)* %62, null
  br i1 %63, label %64, label %82

64:                                               ; preds = %54
  %65 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %66 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  %72 = load i32 (i32*)*, i32 (i32*)** %71, align 8
  %73 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %74 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 %72(i32* %80)
  br label %92

82:                                               ; preds = %54
  %83 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %84 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @free(i32* %90)
  br label %92

92:                                               ; preds = %82, %64
  %93 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %94 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 4
  store i32* null, i32** %99, align 8
  %100 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %101 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 3
  store i32 (i32*)* null, i32 (i32*)** %106, align 8
  br label %107

107:                                              ; preds = %92, %44
  %108 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %109 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %170

117:                                              ; preds = %107
  %118 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %119 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32 (i32*)*, i32 (i32*)** %124, align 8
  %126 = icmp ne i32 (i32*)* %125, null
  br i1 %126, label %127, label %145

127:                                              ; preds = %117
  %128 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %129 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %128, i32 0, i32 0
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32 (i32*)*, i32 (i32*)** %134, align 8
  %136 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %137 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %136, i32 0, i32 0
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 %135(i32* %143)
  br label %155

145:                                              ; preds = %117
  %146 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %147 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %146, i32 0, i32 0
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @free(i32* %153)
  br label %155

155:                                              ; preds = %145, %127
  %156 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %157 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %156, i32 0, i32 0
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 2
  store i32* null, i32** %162, align 8
  %163 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %164 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %163, i32 0, i32 0
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = load i32, i32* %5, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  store i32 (i32*)* null, i32 (i32*)** %169, align 8
  br label %170

170:                                              ; preds = %155, %107
  %171 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %172 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %171, i32 0, i32 0
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  store i32 -1, i32* %177, align 8
  br label %202

178:                                              ; preds = %18
  %179 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %180 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %179, i32 0, i32 0
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = load i32, i32* %5, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, -1
  br i1 %187, label %188, label %197

188:                                              ; preds = %178
  %189 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %190 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %189, i32 0, i32 0
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %190, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  store i32 %196, i32* %6, align 4
  br label %197

197:                                              ; preds = %188, %178
  br label %198

198:                                              ; preds = %197
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %5, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %5, align 4
  br label %11

202:                                              ; preds = %170, %11
  %203 = load i32, i32* %6, align 4
  ret i32 %203
}

declare dso_local i32 @ESP_LOGD(i32, i32, i32) #1

declare dso_local i32 @LOG_FMT(i8*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
