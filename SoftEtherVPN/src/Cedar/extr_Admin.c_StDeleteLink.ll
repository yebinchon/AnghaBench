; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StDeleteLink.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StDeleteLink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i32* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@MAX_ACCOUNT_NAME_LEN = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@SERVER_TYPE_STANDALONE = common dso_local global i64 0, align 8
@ERR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@CHECK_RIGHT = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"no_cascade\00", align 1
@ERR_NOT_ENOUGH_RIGHT = common dso_local global i64 0, align 8
@ERR_OBJECT_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"LA_DELETE_LINK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StDeleteLink(%struct.TYPE_25__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  store %struct.TYPE_21__* %19, %struct.TYPE_21__** %7, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %8, align 8
  %23 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %23, i64* %10, align 8
  %24 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %11, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %12, align 8
  %29 = load i32, i32* @MAX_ACCOUNT_NAME_LEN, align 4
  %30 = add nsw i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %13, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @UniIsEmptyStr(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %39, i64* %3, align 8
  store i32 1, i32* %15, align 4
  br label %166

40:                                               ; preds = %2
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i64, i64* @ERR_NOT_SUPPORTED, align 8
  store i64 %47, i64* %3, align 8
  store i32 1, i32* %15, align 4
  br label %166

48:                                               ; preds = %40
  %49 = load i32, i32* @CHECK_RIGHT, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @LockHubList(i32* %50)
  %52 = load i32*, i32** %8, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.TYPE_24__* @GetHub(i32* %52, i32 %55)
  store %struct.TYPE_24__* %56, %struct.TYPE_24__** %9, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @UnlockHubList(i32* %57)
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %60 = icmp eq %struct.TYPE_24__* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load i64, i64* @ERR_HUB_NOT_FOUND, align 8
  store i64 %62, i64* %3, align 8
  store i32 1, i32* %15, align 4
  br label %166

63:                                               ; preds = %48
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %70 = call i64 @GetHubAdminOption(%struct.TYPE_24__* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %74 = call i32 @ReleaseHub(%struct.TYPE_24__* %73)
  %75 = load i64, i64* @ERR_NOT_ENOUGH_RIGHT, align 8
  store i64 %75, i64* %3, align 8
  store i32 1, i32* %15, align 4
  br label %166

76:                                               ; preds = %68, %63
  %77 = trunc i64 %26 to i32
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @StrCpy(i8* %28, i32 %77, i32 %80)
  %82 = mul nuw i64 4, %31
  %83 = trunc i64 %82 to i32
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @UniStrCpy(i32* %32, i32 %83, i32 %86)
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %14, align 8
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @LockList(i32 %90)
  store i64 0, i64* %6, align 8
  br label %92

92:                                               ; preds = %131, %76
  %93 = load i64, i64* %6, align 8
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @LIST_NUM(i32 %96)
  %98 = icmp slt i64 %93, %97
  br i1 %98, label %99, label %134

99:                                               ; preds = %92
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* %6, align 8
  %104 = call %struct.TYPE_23__* @LIST_DATA(i32 %102, i64 %103)
  store %struct.TYPE_23__* %104, %struct.TYPE_23__** %16, align 8
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @Lock(i32 %107)
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @UniStrCmpi(i32 %113, i32* %32)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %99
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  store %struct.TYPE_23__* %117, %struct.TYPE_23__** %14, align 8
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @AddRef(i32 %120)
  br label %122

122:                                              ; preds = %116, %99
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @Unlock(i32 %125)
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %128 = icmp ne %struct.TYPE_23__* %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %134

130:                                              ; preds = %122
  br label %131

131:                                              ; preds = %130
  %132 = load i64, i64* %6, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %6, align 8
  br label %92

134:                                              ; preds = %129, %92
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @UnlockList(i32 %137)
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %140 = icmp eq %struct.TYPE_23__* %139, null
  br i1 %140, label %141, label %145

141:                                              ; preds = %134
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %143 = call i32 @ReleaseHub(%struct.TYPE_24__* %142)
  %144 = load i64, i64* @ERR_OBJECT_NOT_FOUND, align 8
  store i64 %144, i64* %3, align 8
  store i32 1, i32* %15, align 4
  br label %166

145:                                              ; preds = %134
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 0
  store i32 1, i32* %147, align 8
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @ALog(%struct.TYPE_25__* %148, %struct.TYPE_24__* %149, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %152)
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %155 = call i32 @SetLinkOffline(%struct.TYPE_23__* %154)
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %157 = call i32 @IncrementServerConfigRevision(%struct.TYPE_21__* %156)
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %160 = call i32 @DelLink(%struct.TYPE_24__* %158, %struct.TYPE_23__* %159)
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %162 = call i32 @ReleaseLink(%struct.TYPE_23__* %161)
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %164 = call i32 @ReleaseHub(%struct.TYPE_24__* %163)
  %165 = load i64, i64* %10, align 8
  store i64 %165, i64* %3, align 8
  store i32 1, i32* %15, align 4
  br label %166

166:                                              ; preds = %145, %141, %72, %61, %46, %38
  %167 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %167)
  %168 = load i64, i64* %3, align 8
  ret i64 %168
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @UniIsEmptyStr(i32) #2

declare dso_local i32 @LockHubList(i32*) #2

declare dso_local %struct.TYPE_24__* @GetHub(i32*, i32) #2

declare dso_local i32 @UnlockHubList(i32*) #2

declare dso_local i64 @GetHubAdminOption(%struct.TYPE_24__*, i8*) #2

declare dso_local i32 @ReleaseHub(%struct.TYPE_24__*) #2

declare dso_local i32 @StrCpy(i8*, i32, i32) #2

declare dso_local i32 @UniStrCpy(i32*, i32, i32) #2

declare dso_local i32 @LockList(i32) #2

declare dso_local i64 @LIST_NUM(i32) #2

declare dso_local %struct.TYPE_23__* @LIST_DATA(i32, i64) #2

declare dso_local i32 @Lock(i32) #2

declare dso_local i64 @UniStrCmpi(i32, i32*) #2

declare dso_local i32 @AddRef(i32) #2

declare dso_local i32 @Unlock(i32) #2

declare dso_local i32 @UnlockList(i32) #2

declare dso_local i32 @ALog(%struct.TYPE_25__*, %struct.TYPE_24__*, i8*, i32) #2

declare dso_local i32 @SetLinkOffline(%struct.TYPE_23__*) #2

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_21__*) #2

declare dso_local i32 @DelLink(%struct.TYPE_24__*, %struct.TYPE_23__*) #2

declare dso_local i32 @ReleaseLink(%struct.TYPE_23__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
