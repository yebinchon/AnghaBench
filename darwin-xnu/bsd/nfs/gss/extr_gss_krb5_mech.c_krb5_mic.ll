; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_krb5_mic.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_krb5_mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_16__*, i32, i8**, %struct.TYPE_13__, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i8** }
%struct.TYPE_14__ = type { i32, i32 }

@hmac_ctx = common dso_local global i32 0, align 4
@GSS_RCV = common dso_local global i32 0, align 4
@GSS_SND = common dso_local global i32 0, align 4
@CRYPTO_KS_ALLOCED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @krb5_mic(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2, %struct.TYPE_14__* %3, i32* %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %17, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %18, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = load i32, i32* @hmac_ctx, align 4
  %33 = call i32 @cchmac_di_decl(%struct.TYPE_16__* %31, i32 %32)
  %34 = load i32*, i32** %14, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %8
  %37 = load i32, i32* %16, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @GSS_RCV, align 4
  br label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @GSS_SND, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  br label %54

45:                                               ; preds = %8
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @GSS_SND, align 4
  br label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @GSS_RCV, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  br label %54

54:                                               ; preds = %52, %43
  %55 = phi i32 [ %44, %43 ], [ %53, %52 ]
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %98

58:                                               ; preds = %54
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @CRYPTO_KS_ALLOCED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %89, label %65

65:                                               ; preds = %58
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @lck_mtx_lock(i32 %68)
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @CRYPTO_KS_ALLOCED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %65
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %78 = call i32 @cc_key_schedule_create(%struct.TYPE_15__* %77)
  br label %79

79:                                               ; preds = %76, %65
  %80 = load i32, i32* @CRYPTO_KS_ALLOCED, align 4
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @lck_mtx_unlock(i32 %87)
  br label %89

89:                                               ; preds = %79, %58
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i8**, i8*** %92, align 8
  %94 = load i32, i32* %19, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %20, align 8
  br label %106

98:                                               ; preds = %54
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 4
  %101 = load i8**, i8*** %100, align 8
  %102 = load i32, i32* %19, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %20, align 8
  br label %106

106:                                              ; preds = %98, %89
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = load i32, i32* @hmac_ctx, align 4
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load i8*, i8** %20, align 8
  %115 = call i32 @cchmac_init(%struct.TYPE_16__* %109, i32 %110, i32 %113, i8* %114)
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %117 = icmp ne %struct.TYPE_14__* %116, null
  br i1 %117, label %118, label %130

118:                                              ; preds = %106
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = load i32, i32* @hmac_ctx, align 4
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @cchmac_update(%struct.TYPE_16__* %121, i32 %122, i32 %125, i32 %128)
  br label %130

130:                                              ; preds = %118, %106
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %132, align 8
  %134 = load i32, i32* @hmac_ctx, align 4
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @cchmac_update(%struct.TYPE_16__* %133, i32 %134, i32 %137, i32 %140)
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %143 = icmp ne %struct.TYPE_14__* %142, null
  br i1 %143, label %144, label %156

144:                                              ; preds = %130
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %146, align 8
  %148 = load i32, i32* @hmac_ctx, align 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @cchmac_update(%struct.TYPE_16__* %147, i32 %148, i32 %151, i32 %154)
  br label %156

156:                                              ; preds = %144, %130
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %158, align 8
  %160 = load i32, i32* @hmac_ctx, align 4
  %161 = call i32 @cchmac_final(%struct.TYPE_16__* %159, i32 %160, i32* %28)
  %162 = load i32*, i32** %14, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %173

164:                                              ; preds = %156
  %165 = load i32*, i32** %13, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i64 @memcmp(i32* %165, i32* %28, i32 %168)
  %170 = icmp eq i64 %169, 0
  %171 = zext i1 %170 to i32
  %172 = load i32*, i32** %14, align 8
  store i32 %171, i32* %172, align 4
  br label %179

173:                                              ; preds = %156
  %174 = load i32*, i32** %13, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @memcpy(i32* %174, i32* %28, i32 %177)
  br label %179

179:                                              ; preds = %173, %164
  %180 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %180)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cchmac_di_decl(%struct.TYPE_16__*, i32) #2

declare dso_local i32 @lck_mtx_lock(i32) #2

declare dso_local i32 @cc_key_schedule_create(%struct.TYPE_15__*) #2

declare dso_local i32 @lck_mtx_unlock(i32) #2

declare dso_local i32 @cchmac_init(%struct.TYPE_16__*, i32, i32, i8*) #2

declare dso_local i32 @cchmac_update(%struct.TYPE_16__*, i32, i32, i32) #2

declare dso_local i32 @cchmac_final(%struct.TYPE_16__*, i32, i32*) #2

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
