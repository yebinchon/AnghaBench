; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_krb5_mic_mbuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_krb5_mic_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_14__*, i8**, %struct.TYPE_11__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i8** }
%struct.TYPE_12__ = type { i32, i32 }
%struct.hmac_walker_ctx = type { i32 }

@GSS_RCV = common dso_local global i32 0, align 4
@GSS_SND = common dso_local global i32 0, align 4
@CRYPTO_KS_ALLOCED = common dso_local global i32 0, align 4
@do_hmac = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@EBADRPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @krb5_mic_mbuf(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_12__* %5, i32* %6, i32* %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.hmac_walker_ctx, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store %struct.TYPE_12__* %5, %struct.TYPE_12__** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %23, align 8
  %36 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %24, align 8
  %37 = load i32*, i32** %19, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %10
  %40 = load i32, i32* %21, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @GSS_RCV, align 4
  br label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @GSS_SND, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  br label %57

48:                                               ; preds = %10
  %49 = load i32, i32* %21, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @GSS_SND, align 4
  br label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @GSS_RCV, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  br label %57

57:                                               ; preds = %55, %46
  %58 = phi i32 [ %47, %46 ], [ %56, %55 ]
  store i32 %58, i32* %26, align 4
  %59 = load i32, i32* %20, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %101

61:                                               ; preds = %57
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @CRYPTO_KS_ALLOCED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %92, label %68

68:                                               ; preds = %61
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @lck_mtx_lock(i32 %71)
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @CRYPTO_KS_ALLOCED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %68
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %81 = call i32 @cc_key_schedule_create(%struct.TYPE_13__* %80)
  br label %82

82:                                               ; preds = %79, %68
  %83 = load i32, i32* @CRYPTO_KS_ALLOCED, align 4
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @lck_mtx_unlock(i32 %90)
  br label %92

92:                                               ; preds = %82, %61
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i8**, i8*** %95, align 8
  %97 = load i32, i32* %26, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %27, align 8
  br label %109

101:                                              ; preds = %57
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 3
  %104 = load i8**, i8*** %103, align 8
  %105 = load i32, i32* %26, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i8*, i8** %107, align 8
  store i8* %108, i8** %27, align 8
  br label %109

109:                                              ; preds = %101, %92
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %111 = load i8*, i8** %27, align 8
  %112 = call i32 @do_hmac_init(%struct.hmac_walker_ctx* %22, %struct.TYPE_13__* %110, i8* %111)
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %114 = icmp ne %struct.TYPE_12__* %113, null
  br i1 %114, label %115, label %128

115:                                              ; preds = %109
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = getelementptr inbounds %struct.hmac_walker_ctx, %struct.hmac_walker_ctx* %22, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @cchmac_update(%struct.TYPE_14__* %118, i32 %120, i32 %123, i32 %126)
  br label %128

128:                                              ; preds = %115, %109
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* @do_hmac, align 4
  %133 = call i32 @mbuf_walk(i32 %129, i32 %130, i32 %131, i32 1, i32 %132, %struct.hmac_walker_ctx* %22)
  store i32 %133, i32* %25, align 4
  %134 = load i32, i32* %25, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %128
  %137 = load i32, i32* %25, align 4
  store i32 %137, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %189

138:                                              ; preds = %128
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %140 = icmp ne %struct.TYPE_12__* %139, null
  br i1 %140, label %141, label %154

141:                                              ; preds = %138
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %143, align 8
  %145 = getelementptr inbounds %struct.hmac_walker_ctx, %struct.hmac_walker_ctx* %22, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @cchmac_update(%struct.TYPE_14__* %144, i32 %146, i32 %149, i32 %152)
  br label %154

154:                                              ; preds = %141, %138
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %156, align 8
  %158 = getelementptr inbounds %struct.hmac_walker_ctx, %struct.hmac_walker_ctx* %22, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @cchmac_final(%struct.TYPE_14__* %157, i32 %159, i32* %36)
  %161 = getelementptr inbounds %struct.hmac_walker_ctx, %struct.hmac_walker_ctx* %22, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @M_TEMP, align 4
  %164 = call i32 @FREE(i32 %162, i32 %163)
  %165 = load i32*, i32** %19, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %182

167:                                              ; preds = %154
  %168 = load i32*, i32** %18, align 8
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i64 @memcmp(i32* %168, i32* %36, i32 %171)
  %173 = icmp eq i64 %172, 0
  %174 = zext i1 %173 to i32
  %175 = load i32*, i32** %19, align 8
  store i32 %174, i32* %175, align 4
  %176 = load i32*, i32** %19, align 8
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %167
  %180 = load i32, i32* @EBADRPC, align 4
  store i32 %180, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %189

181:                                              ; preds = %167
  br label %188

182:                                              ; preds = %154
  %183 = load i32*, i32** %18, align 8
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @memcpy(i32* %183, i32* %36, i32 %186)
  br label %188

188:                                              ; preds = %182, %181
  store i32 0, i32* %11, align 4
  store i32 1, i32* %28, align 4
  br label %189

189:                                              ; preds = %188, %179, %136
  %190 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %190)
  %191 = load i32, i32* %11, align 4
  ret i32 %191
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lck_mtx_lock(i32) #2

declare dso_local i32 @cc_key_schedule_create(%struct.TYPE_13__*) #2

declare dso_local i32 @lck_mtx_unlock(i32) #2

declare dso_local i32 @do_hmac_init(%struct.hmac_walker_ctx*, %struct.TYPE_13__*, i8*) #2

declare dso_local i32 @cchmac_update(%struct.TYPE_14__*, i32, i32, i32) #2

declare dso_local i32 @mbuf_walk(i32, i32, i32, i32, i32, %struct.hmac_walker_ctx*) #2

declare dso_local i32 @cchmac_final(%struct.TYPE_14__*, i32, i32*) #2

declare dso_local i32 @FREE(i32, i32) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
