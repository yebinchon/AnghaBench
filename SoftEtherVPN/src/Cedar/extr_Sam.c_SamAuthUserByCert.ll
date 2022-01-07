; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Sam.c_SamAuthUserByCert.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Sam.c_SamAuthUserByCert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_28__ = type { i64, i32, i64 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_24__*, i32* }
%struct.TYPE_24__ = type { i32 }

@GSF_DISABLE_CERT_AUTH = common dso_local global i32 0, align 4
@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"LH_AUTH_NG_CERT\00", align 1
@AUTHTYPE_USERCERT = common dso_local global i64 0, align 8
@AUTHTYPE_ROOTCERT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"LH_AUTH_OK_CERT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SamAuthUserByCert(%struct.TYPE_29__* %0, i8* %1, %struct.TYPE_27__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca %struct.TYPE_31__*, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %18 = icmp eq %struct.TYPE_29__* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %24 = icmp eq %struct.TYPE_27__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19, %3
  store i32 0, i32* %4, align 4
  br label %202

26:                                               ; preds = %22
  %27 = load i32, i32* @GSF_DISABLE_CERT_AUTH, align 4
  %28 = call i64 @GetGlobalServerFlag(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %202

31:                                               ; preds = %26
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %33 = call i32 @CheckXDateNow(%struct.TYPE_27__* %32)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %202

36:                                               ; preds = %31
  %37 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %39 = call i32 @IsValidCertInHub(%struct.TYPE_29__* %37, %struct.TYPE_27__* %38)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load i32, i32* @MAX_SIZE, align 4
  %43 = mul nsw i32 %42, 2
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %9, align 8
  %46 = alloca i32, i64 %44, align 16
  store i64 %44, i64* %10, align 8
  %47 = mul nuw i64 4, %44
  %48 = trunc i64 %47 to i32
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %50 = call i32 @GetAllNameFromX(i32* %46, i32 %48, %struct.TYPE_27__* %49)
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @HLog(%struct.TYPE_29__* %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %52, i32* %46)
  store i32 0, i32* %4, align 4
  %54 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %54)
  br label %202

55:                                               ; preds = %36
  %56 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %57 = call i32 @AcLock(%struct.TYPE_29__* %56)
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call %struct.TYPE_28__* @AcGetUser(%struct.TYPE_29__* %58, i8* %59)
  store %struct.TYPE_28__* %60, %struct.TYPE_28__** %11, align 8
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %62 = icmp ne %struct.TYPE_28__* %61, null
  br i1 %62, label %63, label %181

63:                                               ; preds = %55
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @Lock(i32 %66)
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @AUTHTYPE_USERCERT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %63
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %77, %struct.TYPE_30__** %12, align 8
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %82 = call i64 @CompareX(i32 %80, %struct.TYPE_27__* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  store i32 1, i32* %8, align 4
  br label %85

85:                                               ; preds = %84, %73
  br label %174

86:                                               ; preds = %63
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @AUTHTYPE_ROOTCERT, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %173

92:                                               ; preds = %86
  %93 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %96, %struct.TYPE_31__** %13, align 8
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %98, align 8
  %100 = icmp ne %struct.TYPE_26__* %99, null
  br i1 %100, label %101, label %172

101:                                              ; preds = %92
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @LockList(i32 %106)
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %114 = call %struct.TYPE_27__* @GetIssuerFromList(i32 %112, %struct.TYPE_27__* %113)
  store %struct.TYPE_27__* %114, %struct.TYPE_27__** %14, align 8
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %116 = icmp ne %struct.TYPE_27__* %115, null
  br i1 %116, label %117, label %165

117:                                              ; preds = %101
  store i32 1, i32* %8, align 4
  %118 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %141

122:                                              ; preds = %117
  %123 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @UniIsEmptyStr(i32* %125)
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %122
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = call i64 @UniStrCmpi(i32 %133, i32* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %128
  store i32 0, i32* %8, align 4
  br label %140

140:                                              ; preds = %139, %128
  br label %141

141:                                              ; preds = %140, %122, %117
  %142 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %143, align 8
  %145 = icmp ne %struct.TYPE_24__* %144, null
  br i1 %145, label %146, label %164

146:                                              ; preds = %141
  %147 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp sge i32 %151, 1
  br i1 %152, label %153, label %164

153:                                              ; preds = %146
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %158, align 8
  %160 = call i32 @CompareXSerial(i32 %156, %struct.TYPE_24__* %159)
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %153
  store i32 0, i32* %8, align 4
  br label %163

163:                                              ; preds = %162, %153
  br label %164

164:                                              ; preds = %163, %146, %141
  br label %165

165:                                              ; preds = %164, %101
  %166 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @UnlockList(i32 %170)
  br label %172

172:                                              ; preds = %165, %92
  br label %173

173:                                              ; preds = %172, %86
  br label %174

174:                                              ; preds = %173, %85
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @Unlock(i32 %177)
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %180 = call i32 @ReleaseUser(%struct.TYPE_28__* %179)
  br label %181

181:                                              ; preds = %174, %55
  %182 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %183 = call i32 @AcUnlock(%struct.TYPE_29__* %182)
  %184 = load i32, i32* %8, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %200

186:                                              ; preds = %181
  %187 = load i32, i32* @MAX_SIZE, align 4
  %188 = mul nsw i32 %187, 2
  %189 = zext i32 %188 to i64
  %190 = call i8* @llvm.stacksave()
  store i8* %190, i8** %15, align 8
  %191 = alloca i32, i64 %189, align 16
  store i64 %189, i64* %16, align 8
  %192 = mul nuw i64 4, %189
  %193 = trunc i64 %192 to i32
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %195 = call i32 @GetAllNameFromX(i32* %191, i32 %193, %struct.TYPE_27__* %194)
  %196 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %197 = load i8*, i8** %6, align 8
  %198 = call i32 @HLog(%struct.TYPE_29__* %196, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %197, i32* %191)
  %199 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %199)
  br label %200

200:                                              ; preds = %186, %181
  %201 = load i32, i32* %8, align 4
  store i32 %201, i32* %4, align 4
  br label %202

202:                                              ; preds = %200, %41, %35, %30, %25
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local i64 @GetGlobalServerFlag(i32) #1

declare dso_local i32 @CheckXDateNow(%struct.TYPE_27__*) #1

declare dso_local i32 @IsValidCertInHub(%struct.TYPE_29__*, %struct.TYPE_27__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @GetAllNameFromX(i32*, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @HLog(%struct.TYPE_29__*, i8*, i8*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @AcLock(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_28__* @AcGetUser(%struct.TYPE_29__*, i8*) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i64 @CompareX(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local %struct.TYPE_27__* @GetIssuerFromList(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @UniIsEmptyStr(i32*) #1

declare dso_local i64 @UniStrCmpi(i32, i32*) #1

declare dso_local i32 @CompareXSerial(i32, %struct.TYPE_24__*) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @ReleaseUser(%struct.TYPE_28__*) #1

declare dso_local i32 @AcUnlock(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
