; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/extr_khrn_client.c_client_send_make_current.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/extr_khrn_client.c_client_send_make_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_15__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_12__* }
%struct.TYPE_17__ = type { i64, i32, i32, i64 }
%struct.TYPE_16__ = type { i64, i64, i32, i64, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@EGL_SERVER_NO_GL_CONTEXT = common dso_local global i32 0, align 4
@EGL_SERVER_NO_SURFACE = common dso_local global i32 0, align 4
@EGL_SERVER_NO_VG_CONTEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Send null make current %x %x\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Send make current %d[%d %s%s] %d[%d %d%s]\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" C\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c" D\00", align 1
@eglIntMakeCurrent_impl = common dso_local global i32 0, align 4
@EGLINTMAKECURRENT_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @client_send_make_current(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %11 = call i32 @rpc_get_client_id(%struct.TYPE_19__* %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %16 = icmp ne %struct.TYPE_16__* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @convert_gltype(i32 %23)
  br label %26

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %25, %17
  %27 = phi i32 [ %24, %17 ], [ 0, %25 ]
  store i32 %27, i32* %4, align 4
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = icmp ne %struct.TYPE_16__* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  br label %42

40:                                               ; preds = %26
  %41 = load i32, i32* @EGL_SERVER_NO_GL_CONTEXT, align 4
  br label %42

42:                                               ; preds = %40, %33
  %43 = phi i32 [ %39, %33 ], [ %41, %40 ]
  store i32 %43, i32* %5, align 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %46, align 8
  %48 = icmp ne %struct.TYPE_17__* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  br label %58

56:                                               ; preds = %42
  %57 = load i32, i32* @EGL_SERVER_NO_SURFACE, align 4
  br label %58

58:                                               ; preds = %56, %49
  %59 = phi i32 [ %55, %49 ], [ %57, %56 ]
  store i32 %59, i32* %6, align 4
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = icmp ne %struct.TYPE_12__* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  br label %74

72:                                               ; preds = %58
  %73 = load i32, i32* @EGL_SERVER_NO_SURFACE, align 4
  br label %74

74:                                               ; preds = %72, %65
  %75 = phi i32 [ %71, %65 ], [ %73, %72 ]
  store i32 %75, i32* %7, align 4
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = icmp ne %struct.TYPE_13__* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  br label %90

88:                                               ; preds = %74
  %89 = load i32, i32* @EGL_SERVER_NO_VG_CONTEXT, align 4
  br label %90

90:                                               ; preds = %88, %81
  %91 = phi i32 [ %87, %81 ], [ %89, %88 ]
  store i32 %91, i32* %8, align 4
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = icmp ne %struct.TYPE_14__* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %90
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  br label %106

104:                                              ; preds = %90
  %105 = load i32, i32* @EGL_SERVER_NO_SURFACE, align 4
  br label %106

106:                                              ; preds = %104, %97
  %107 = phi i32 [ %103, %97 ], [ %105, %104 ]
  store i32 %107, i32* %9, align 4
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = icmp ne %struct.TYPE_16__* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %106
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %116, align 8
  %118 = icmp ne %struct.TYPE_17__* %117, null
  br i1 %118, label %133, label %119

119:                                              ; preds = %113, %106
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %122, align 8
  %124 = bitcast %struct.TYPE_16__* %123 to i8*
  %125 = ptrtoint i8* %124 to i32
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %128, align 8
  %130 = bitcast %struct.TYPE_17__* %129 to i8*
  %131 = ptrtoint i8* %130 to i32
  %132 = call i32 (i8*, i32, i32, ...) @vcos_log_trace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %125, i32 %131)
  br label %194

133:                                              ; preds = %113
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = trunc i64 %170 to i32
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %193 = call i32 (i8*, i32, i32, ...) @vcos_log_trace(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %140, i32 %146, i8* %155, i8* %164, i32 %171, i32 %177, i32 %183, i8* %192)
  br label %194

194:                                              ; preds = %133, %119
  %195 = load i32, i32* @eglIntMakeCurrent_impl, align 4
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %197 = load i32, i32* @EGLINTMAKECURRENT_ID, align 4
  %198 = load i32, i32* %3, align 4
  %199 = call i32 @RPC_UINT(i32 %198)
  %200 = load i32, i32* %3, align 4
  %201 = ashr i32 %200, 32
  %202 = call i32 @RPC_UINT(i32 %201)
  %203 = load i32, i32* %4, align 4
  %204 = call i32 @RPC_UINT(i32 %203)
  %205 = load i32, i32* %5, align 4
  %206 = call i32 @RPC_UINT(i32 %205)
  %207 = load i32, i32* %6, align 4
  %208 = call i32 @RPC_UINT(i32 %207)
  %209 = load i32, i32* %7, align 4
  %210 = call i32 @RPC_UINT(i32 %209)
  %211 = load i32, i32* %8, align 4
  %212 = call i32 @RPC_UINT(i32 %211)
  %213 = load i32, i32* %9, align 4
  %214 = call i32 @RPC_UINT(i32 %213)
  %215 = call i32 @RPC_CALL8_MAKECURRENT(i32 %195, %struct.TYPE_19__* %196, i32 %197, i32 %199, i32 %202, i32 %204, i32 %206, i32 %208, i32 %210, i32 %212, i32 %214)
  ret void
}

declare dso_local i32 @rpc_get_client_id(%struct.TYPE_19__*) #1

declare dso_local i32 @convert_gltype(i32) #1

declare dso_local i32 @vcos_log_trace(i8*, i32, i32, ...) #1

declare dso_local i32 @RPC_CALL8_MAKECURRENT(i32, %struct.TYPE_19__*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RPC_UINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
