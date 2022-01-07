; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Sam.c_SamAuthUserByPassword.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Sam.c_SamAuthUserByPassword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i8*, i32, i32, i32 }
%struct.TYPE_25__ = type { i64, i32, i64 }
%struct.TYPE_28__ = type { i32, i32 }

@SHA1_SIZE = common dso_local global i32 0, align 4
@ADMINISTRATOR_USERNAME = common dso_local global i32 0, align 4
@AUTHTYPE_PASSWORD = common dso_local global i64 0, align 8
@MD5_SIZE = common dso_local global i32 0, align 4
@ERR_MSCHAP2_PASSWORD_NEED_RESET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SamAuthUserByPassword(%struct.TYPE_27__* %0, i8* %1, i8* %2, i8* %3, i8* %4, %struct.TYPE_26__* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_26__, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_25__*, align 8
  %24 = alloca %struct.TYPE_28__*, align 8
  %25 = alloca [8 x %struct.TYPE_26__], align 16
  %26 = alloca [24 x %struct.TYPE_26__], align 16
  %27 = alloca [16 x %struct.TYPE_26__], align 16
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.TYPE_26__* %5, %struct.TYPE_26__** %14, align 8
  store i64* %6, i64** %15, align 8
  store i32 0, i32* %16, align 4
  %28 = load i32, i32* @SHA1_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %17, align 8
  %31 = alloca %struct.TYPE_26__, i64 %29, align 16
  store i64 %29, i64* %18, align 8
  store i32 0, i32* %19, align 4
  store i64 0, i64* %21, align 8
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %33 = icmp eq %struct.TYPE_27__* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %7
  %35 = load i8*, i8** %10, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i8*, i8** %12, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %34, %7
  store i32 0, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %162

41:                                               ; preds = %37
  %42 = load i64*, i64** %15, align 8
  %43 = icmp eq i64* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i64* %21, i64** %15, align 8
  br label %45

45:                                               ; preds = %44, %41
  %46 = load i64*, i64** %15, align 8
  store i64 0, i64* %46, align 8
  %47 = call i32 @Zero(%struct.TYPE_26__* %20, i32 24)
  %48 = load i8*, i8** %13, align 8
  %49 = call i32 @ParseAndExtractMsChapV2InfoFromPassword(%struct.TYPE_26__* %20, i8* %48)
  store i32 %49, i32* %19, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* @ADMINISTRATOR_USERNAME, align 4
  %52 = call i64 @StrCmpi(i8* %50, i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %45
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @SecurePassword(%struct.TYPE_26__* %31, i32 %57, i8* %58)
  %60 = load i8*, i8** %12, align 8
  %61 = load i32, i32* @SHA1_SIZE, align 4
  %62 = call i64 @Cmp(%struct.TYPE_26__* %31, i8* %60, i32 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  store i32 1, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %162

65:                                               ; preds = %54
  store i32 0, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %162

66:                                               ; preds = %45
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %68 = call i32 @AcLock(%struct.TYPE_27__* %67)
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = call %struct.TYPE_25__* @AcGetUser(%struct.TYPE_27__* %69, i8* %70)
  store %struct.TYPE_25__* %71, %struct.TYPE_25__** %23, align 8
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %73 = icmp ne %struct.TYPE_25__* %72, null
  br i1 %73, label %74, label %158

74:                                               ; preds = %66
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @Lock(i32 %77)
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @AUTHTYPE_PASSWORD, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %151

84:                                               ; preds = %74
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %88, %struct.TYPE_28__** %24, align 8
  %89 = load i32, i32* %19, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %84
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 @SecurePassword(%struct.TYPE_26__* %31, i32 %94, i8* %95)
  %97 = load i8*, i8** %12, align 8
  %98 = load i32, i32* @SHA1_SIZE, align 4
  %99 = call i64 @Cmp(%struct.TYPE_26__* %31, i8* %97, i32 %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  store i32 1, i32* %16, align 4
  br label %102

102:                                              ; preds = %101, %91
  br label %150

103:                                              ; preds = %84
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @MD5_SIZE, align 4
  %108 = call i64 @IsZero(i32 %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load i64, i64* @ERR_MSCHAP2_PASSWORD_NEED_RESET, align 8
  %112 = load i64*, i64** %15, align 8
  store i64 %111, i64* %112, align 8
  br label %149

113:                                              ; preds = %103
  %114 = getelementptr inbounds [8 x %struct.TYPE_26__], [8 x %struct.TYPE_26__]* %25, i64 0, i64 0
  %115 = call i32 @Zero(%struct.TYPE_26__* %114, i32 192)
  %116 = getelementptr inbounds [24 x %struct.TYPE_26__], [24 x %struct.TYPE_26__]* %26, i64 0, i64 0
  %117 = call i32 @Zero(%struct.TYPE_26__* %116, i32 576)
  %118 = getelementptr inbounds [8 x %struct.TYPE_26__], [8 x %struct.TYPE_26__]* %25, i64 0, i64 0
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @MsChapV2_GenerateChallenge8(%struct.TYPE_26__* %118, i32 %120, i32 %122, i32 %124)
  %126 = getelementptr inbounds [24 x %struct.TYPE_26__], [24 x %struct.TYPE_26__]* %26, i64 0, i64 0
  %127 = getelementptr inbounds [8 x %struct.TYPE_26__], [8 x %struct.TYPE_26__]* %25, i64 0, i64 0
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @MsChapV2Client_GenerateResponse(%struct.TYPE_26__* %126, %struct.TYPE_26__* %127, i32 %130)
  %132 = getelementptr inbounds [24 x %struct.TYPE_26__], [24 x %struct.TYPE_26__]* %26, i64 0, i64 0
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i64 @Cmp(%struct.TYPE_26__* %132, i8* %134, i32 24)
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %113
  store i32 1, i32* %16, align 4
  %138 = getelementptr inbounds [16 x %struct.TYPE_26__], [16 x %struct.TYPE_26__]* %27, i64 0, i64 0
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @GenerateNtPasswordHashHash(%struct.TYPE_26__* %138, i32 %141)
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %144 = getelementptr inbounds [16 x %struct.TYPE_26__], [16 x %struct.TYPE_26__]* %27, i64 0, i64 0
  %145 = getelementptr inbounds [24 x %struct.TYPE_26__], [24 x %struct.TYPE_26__]* %26, i64 0, i64 0
  %146 = getelementptr inbounds [8 x %struct.TYPE_26__], [8 x %struct.TYPE_26__]* %25, i64 0, i64 0
  %147 = call i32 @MsChapV2Server_GenerateResponse(%struct.TYPE_26__* %143, %struct.TYPE_26__* %144, %struct.TYPE_26__* %145, %struct.TYPE_26__* %146)
  br label %148

148:                                              ; preds = %137, %113
  br label %149

149:                                              ; preds = %148, %110
  br label %150

150:                                              ; preds = %149, %102
  br label %151

151:                                              ; preds = %150, %74
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @Unlock(i32 %154)
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %157 = call i32 @ReleaseUser(%struct.TYPE_25__* %156)
  br label %158

158:                                              ; preds = %151, %66
  %159 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %160 = call i32 @AcUnlock(%struct.TYPE_27__* %159)
  %161 = load i32, i32* %16, align 4
  store i32 %161, i32* %8, align 4
  store i32 1, i32* %22, align 4
  br label %162

162:                                              ; preds = %158, %65, %64, %40
  %163 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %163)
  %164 = load i32, i32* %8, align 4
  ret i32 %164
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Zero(%struct.TYPE_26__*, i32) #2

declare dso_local i32 @ParseAndExtractMsChapV2InfoFromPassword(%struct.TYPE_26__*, i8*) #2

declare dso_local i64 @StrCmpi(i8*, i32) #2

declare dso_local i32 @SecurePassword(%struct.TYPE_26__*, i32, i8*) #2

declare dso_local i64 @Cmp(%struct.TYPE_26__*, i8*, i32) #2

declare dso_local i32 @AcLock(%struct.TYPE_27__*) #2

declare dso_local %struct.TYPE_25__* @AcGetUser(%struct.TYPE_27__*, i8*) #2

declare dso_local i32 @Lock(i32) #2

declare dso_local i64 @IsZero(i32, i32) #2

declare dso_local i32 @MsChapV2_GenerateChallenge8(%struct.TYPE_26__*, i32, i32, i32) #2

declare dso_local i32 @MsChapV2Client_GenerateResponse(%struct.TYPE_26__*, %struct.TYPE_26__*, i32) #2

declare dso_local i32 @GenerateNtPasswordHashHash(%struct.TYPE_26__*, i32) #2

declare dso_local i32 @MsChapV2Server_GenerateResponse(%struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_26__*) #2

declare dso_local i32 @Unlock(i32) #2

declare dso_local i32 @ReleaseUser(%struct.TYPE_25__*) #2

declare dso_local i32 @AcUnlock(%struct.TYPE_27__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
