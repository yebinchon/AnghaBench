; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_database.c_task_database_iterate_crc_lookup.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_database.c_task_database_iterate_crc_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i64, i32, i64, i32, %struct.TYPE_20__*, %struct.TYPE_16__* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"{crc:or(b\22%08X\22,b\22%08X\22)}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_18__*, i32*, i8*, i8*)* @task_database_iterate_crc_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_database_iterate_crc_lookup(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, i32* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [50 x i8], align 16
  %13 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 5
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %17 = icmp ne %struct.TYPE_16__* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %5
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 5
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = icmp eq i32 %22, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %18, %5
  %31 = load i32*, i32** %9, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @database_info_list_iterate_end_no_match(i32* %31, %struct.TYPE_18__* %32, i8* %33)
  store i32 %34, i32* %6, align 4
  br label %219

35:                                               ; preds = %18
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %35
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @file_archive_get_file_crc32(i8* %41)
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %51 = call i32 @database_info_list_iterate_next(%struct.TYPE_18__* %50)
  store i32 %51, i32* %6, align 4
  br label %219

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %35
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %117

58:                                               ; preds = %53
  %59 = getelementptr inbounds [50 x i8], [50 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %59, align 16
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %105, label %64

64:                                               ; preds = %58
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 5
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @core_info_database_supports_content_path(i32 %75, i8* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %64
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %81 = call i32 @database_info_list_iterate_next(%struct.TYPE_18__* %80)
  store i32 %81, i32* %6, align 4
  br label %219

82:                                               ; preds = %64
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 @path_contains_compressed_file(i8* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %104, label %86

86:                                               ; preds = %82
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 5
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @core_info_database_match_archive_member(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %86
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %102 = call i32 @database_info_list_iterate_next(%struct.TYPE_18__* %101)
  store i32 %102, i32* %6, align 4
  br label %219

103:                                              ; preds = %86
  br label %104

104:                                              ; preds = %103, %82
  br label %105

105:                                              ; preds = %104, %58
  %106 = getelementptr inbounds [50 x i8], [50 x i8]* %12, i64 0, i64 0
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @snprintf(i8* %106, i32 50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %112)
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %115 = getelementptr inbounds [50 x i8], [50 x i8]* %12, i64 0, i64 0
  %116 = call i32 @database_info_list_iterate_new(%struct.TYPE_18__* %114, i8* %115)
  br label %117

117:                                              ; preds = %105, %53
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 4
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %119, align 8
  %121 = icmp ne %struct.TYPE_20__* %120, null
  br i1 %121, label %122, label %170

122:                                              ; preds = %117
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 4
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %126, align 8
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i64 %130
  store %struct.TYPE_19__* %131, %struct.TYPE_19__** %13, align 8
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %133 = icmp ne %struct.TYPE_19__* %132, null
  br i1 %133, label %134, label %169

134:                                              ; preds = %122
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %169

139:                                              ; preds = %134
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %143, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %139
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %151 = load i32*, i32** %9, align 8
  %152 = call i32 @database_info_list_iterate_found_match(%struct.TYPE_17__* %149, %struct.TYPE_18__* %150, i32* %151, i8* null)
  store i32 %152, i32* %6, align 4
  br label %219

153:                                              ; preds = %139
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %157, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %153
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %165 = load i32*, i32** %9, align 8
  %166 = load i8*, i8** %11, align 8
  %167 = call i32 @database_info_list_iterate_found_match(%struct.TYPE_17__* %163, %struct.TYPE_18__* %164, i32* %165, i8* %166)
  store i32 %167, i32* %6, align 4
  br label %219

168:                                              ; preds = %153
  br label %169

169:                                              ; preds = %168, %134, %122
  br label %170

170:                                              ; preds = %169, %117
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %172, align 8
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 4
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %176, align 8
  %178 = icmp ne %struct.TYPE_20__* %177, null
  br i1 %178, label %179, label %193

179:                                              ; preds = %170
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 4
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp uge i64 %182, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %179
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %191 = call i32 @database_info_list_iterate_next(%struct.TYPE_18__* %190)
  store i32 %191, i32* %6, align 4
  br label %219

192:                                              ; preds = %179
  br label %193

193:                                              ; preds = %192, %170
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 5
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ult i64 %196, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %193
  store i32 1, i32* %6, align 4
  br label %219

204:                                              ; preds = %193
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 4
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %206, align 8
  %208 = call i32 @database_info_list_free(%struct.TYPE_20__* %207)
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 4
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %210, align 8
  %212 = icmp ne %struct.TYPE_20__* %211, null
  br i1 %212, label %213, label %218

213:                                              ; preds = %204
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 4
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %215, align 8
  %217 = call i32 @free(%struct.TYPE_20__* %216)
  br label %218

218:                                              ; preds = %213, %204
  store i32 0, i32* %6, align 4
  br label %219

219:                                              ; preds = %218, %203, %189, %162, %148, %100, %79, %49, %30
  %220 = load i32, i32* %6, align 4
  ret i32 %220
}

declare dso_local i32 @database_info_list_iterate_end_no_match(i32*, %struct.TYPE_18__*, i8*) #1

declare dso_local i32 @file_archive_get_file_crc32(i8*) #1

declare dso_local i32 @database_info_list_iterate_next(%struct.TYPE_18__*) #1

declare dso_local i32 @core_info_database_supports_content_path(i32, i8*) #1

declare dso_local i32 @path_contains_compressed_file(i8*) #1

declare dso_local i64 @core_info_database_match_archive_member(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @database_info_list_iterate_new(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @database_info_list_iterate_found_match(%struct.TYPE_17__*, %struct.TYPE_18__*, i32*, i8*) #1

declare dso_local i32 @database_info_list_free(%struct.TYPE_20__*) #1

declare dso_local i32 @free(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
