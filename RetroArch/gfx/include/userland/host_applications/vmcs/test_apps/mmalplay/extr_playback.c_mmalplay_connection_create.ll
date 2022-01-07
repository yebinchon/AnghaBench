; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalplay/extr_playback.c_mmalplay_connection_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/vmcs/test_apps/mmalplay/extr_playback.c_mmalplay_connection_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, %struct.TYPE_19__, %struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_24__** }
%struct.TYPE_19__ = type { i64, i64, %struct.TYPE_22__, %struct.TYPE_22__, i64 }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_24__ = type { i8*, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i64, %struct.TYPE_22__ }

@MMAL_ENCODING_UNKNOWN = common dso_local global i64 0, align 8
@MMAL_FALSE = common dso_local global i64 0, align 8
@MMAL_ENOMEM = common dso_local global i64 0, align 8
@MMAL_CONNECTION_FLAG_TUNNELLING = common dso_local global i64 0, align 8
@MMAL_TRUE = common dso_local global i64 0, align 8
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"cannot override format on output port %s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot create connection\00", align 1
@mmalplay_connection_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_25__*, %struct.TYPE_23__*, %struct.TYPE_23__*, i64)* @mmalplay_connection_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmalplay_connection_create(%struct.TYPE_25__* %0, %struct.TYPE_23__* %1, %struct.TYPE_23__* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_24__**, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %16, align 8
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %17, i64 %20
  store %struct.TYPE_24__** %21, %struct.TYPE_24__*** %10, align 8
  %22 = load i64, i64* @MMAL_ENCODING_UNKNOWN, align 8
  store i64 %22, i64* %11, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %12, align 8
  %23 = load i64, i64* @MMAL_FALSE, align 8
  store i64 %23, i64* %13, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 4
  %29 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %28, align 8
  %30 = call i64 @MMAL_COUNTOF(%struct.TYPE_24__** %29)
  %31 = icmp uge i64 %26, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i64, i64* @MMAL_ENOMEM, align 8
  store i64 %33, i64* %5, align 8
  br label %192

34:                                               ; preds = %4
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64, i64* @MMAL_CONNECTION_FLAG_TUNNELLING, align 8
  br label %43

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i64 [ %41, %40 ], [ 0, %42 ]
  %45 = load i64, i64* %9, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %9, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %49, align 8
  %51 = icmp eq %struct.TYPE_23__* %47, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %43
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %11, align 8
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 3
  store %struct.TYPE_22__* %59, %struct.TYPE_22__** %12, align 8
  br label %75

60:                                               ; preds = %43
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %63, align 8
  %65 = icmp eq %struct.TYPE_23__* %61, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %11, align 8
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 2
  store %struct.TYPE_22__* %73, %struct.TYPE_22__** %12, align 8
  br label %74

74:                                               ; preds = %66, %60
  br label %75

75:                                               ; preds = %74, %52
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* @MMAL_ENCODING_UNKNOWN, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %75
  %80 = load i64, i64* %11, align 8
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %80, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %79
  %88 = load i64, i64* %11, align 8
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  store i64 %88, i64* %92, align 8
  %93 = load i64, i64* @MMAL_TRUE, align 8
  store i64 %93, i64* %13, align 8
  br label %94

94:                                               ; preds = %87, %79, %75
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %96 = icmp ne %struct.TYPE_22__* %95, null
  br i1 %96, label %97, label %139

97:                                               ; preds = %94
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %139

102:                                              ; preds = %97
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %139

107:                                              ; preds = %102
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %116 = bitcast %struct.TYPE_22__* %114 to i8*
  %117 = bitcast %struct.TYPE_22__* %115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %116, i8* align 8 %117, i64 16, i1 false)
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 1
  store i64 %120, i64* %127, align 8
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  store i64 %130, i64* %137, align 8
  %138 = load i64, i64* @MMAL_TRUE, align 8
  store i64 %138, i64* %13, align 8
  br label %139

139:                                              ; preds = %107, %102, %97, %94
  %140 = load i64, i64* %13, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %139
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %144 = call i64 @mmal_port_format_commit(%struct.TYPE_23__* %143)
  store i64 %144, i64* %14, align 8
  %145 = load i64, i64* %14, align 8
  %146 = load i64, i64* @MMAL_SUCCESS, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %142
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %151)
  %153 = load i64, i64* %14, align 8
  store i64 %153, i64* %5, align 8
  br label %192

154:                                              ; preds = %142
  br label %155

155:                                              ; preds = %154, %139
  %156 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %159 = load i64, i64* %9, align 8
  %160 = call i64 @mmal_connection_create(%struct.TYPE_24__** %156, %struct.TYPE_23__* %157, %struct.TYPE_23__* %158, i64 %159)
  store i64 %160, i64* %14, align 8
  %161 = load i64, i64* %14, align 8
  %162 = load i64, i64* @MMAL_SUCCESS, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %155
  %165 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %166 = load i64, i64* %14, align 8
  store i64 %166, i64* %5, align 8
  br label %192

167:                                              ; preds = %155
  %168 = load i32, i32* @mmalplay_connection_cb, align 4
  %169 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 1
  store i32 %168, i32* %171, align 8
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %173 = bitcast %struct.TYPE_25__* %172 to i8*
  %174 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %10, align 8
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 0
  store i8* %173, i8** %176, align 8
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %178, align 8
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %181 = call i32 @log_format(%struct.TYPE_18__* %179, %struct.TYPE_23__* %180)
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %183, align 8
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %186 = call i32 @log_format(%struct.TYPE_18__* %184, %struct.TYPE_23__* %185)
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %188, align 8
  %191 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %191, i64* %5, align 8
  br label %192

192:                                              ; preds = %167, %164, %148, %32
  %193 = load i64, i64* %5, align 8
  ret i64 %193
}

declare dso_local i64 @MMAL_COUNTOF(%struct.TYPE_24__**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mmal_port_format_commit(%struct.TYPE_23__*) #1

declare dso_local i32 @LOG_ERROR(i8*, ...) #1

declare dso_local i64 @mmal_connection_create(%struct.TYPE_24__**, %struct.TYPE_23__*, %struct.TYPE_23__*, i64) #1

declare dso_local i32 @log_format(%struct.TYPE_18__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
