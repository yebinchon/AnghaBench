; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StGetLinkStatus.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StGetLinkStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i32* }
%struct.TYPE_21__ = type { i8*, i32, i32* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_19__*, i32, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@MAX_ACCOUNT_NAME_LEN = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@SERVER_TYPE_STANDALONE = common dso_local global i64 0, align 8
@ERR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@CHECK_RIGHT = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i64 0, align 8
@ERR_OBJECT_NOT_FOUND = common dso_local global i64 0, align 8
@ERR_LINK_IS_OFFLINE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StGetLinkStatus(%struct.TYPE_24__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %7, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %8, align 8
  %24 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %24, i64* %10, align 8
  %25 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %26 = add nsw i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %11, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %12, align 8
  %30 = load i32, i32* @MAX_ACCOUNT_NAME_LEN, align 4
  %31 = add nsw i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %13, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @UniIsEmptyStr(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %40, i64* %3, align 8
  store i32 1, i32* %16, align 4
  br label %187

41:                                               ; preds = %2
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i64, i64* @ERR_NOT_SUPPORTED, align 8
  store i64 %48, i64* %3, align 8
  store i32 1, i32* %16, align 4
  br label %187

49:                                               ; preds = %41
  %50 = load i32, i32* @CHECK_RIGHT, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @LockHubList(i32* %51)
  %53 = load i32*, i32** %8, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call %struct.TYPE_23__* @GetHub(i32* %53, i8* %56)
  store %struct.TYPE_23__* %57, %struct.TYPE_23__** %9, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @UnlockHubList(i32* %58)
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %61 = icmp eq %struct.TYPE_23__* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %49
  %63 = load i64, i64* @ERR_HUB_NOT_FOUND, align 8
  store i64 %63, i64* %3, align 8
  store i32 1, i32* %16, align 4
  br label %187

64:                                               ; preds = %49
  %65 = trunc i64 %27 to i32
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @StrCpy(i8* %29, i32 %65, i8* %68)
  %70 = mul nuw i64 4, %32
  %71 = trunc i64 %70 to i32
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @UniStrCpy(i32* %33, i32 %71, i32* %74)
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %77 = call i32 @FreeRpcLinkStatus(%struct.TYPE_21__* %76)
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %79 = call i32 @Zero(%struct.TYPE_21__* %78, i32 24)
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @StrCpy(i8* %82, i32 8, i8* %29)
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @UniStrCpy(i32* %86, i32 8, i32* %33)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %14, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @LockList(i32 %90)
  store i64 0, i64* %6, align 8
  br label %92

92:                                               ; preds = %131, %64
  %93 = load i64, i64* %6, align 8
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @LIST_NUM(i32 %96)
  %98 = icmp slt i64 %93, %97
  br i1 %98, label %99, label %134

99:                                               ; preds = %92
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* %6, align 8
  %104 = call %struct.TYPE_22__* @LIST_DATA(i32 %102, i64 %103)
  store %struct.TYPE_22__* %104, %struct.TYPE_22__** %17, align 8
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @Lock(i32 %107)
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 4
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @UniStrCmpi(i32 %113, i32* %33)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %99
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  store %struct.TYPE_22__* %117, %struct.TYPE_22__** %14, align 8
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @AddRef(i32 %120)
  br label %122

122:                                              ; preds = %116, %99
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @Unlock(i32 %125)
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %128 = icmp ne %struct.TYPE_22__* %127, null
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
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @UnlockList(i32 %137)
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %140 = icmp eq %struct.TYPE_22__* %139, null
  br i1 %140, label %141, label %145

141:                                              ; preds = %134
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %143 = call i32 @ReleaseHub(%struct.TYPE_23__* %142)
  %144 = load i64, i64* @ERR_OBJECT_NOT_FOUND, align 8
  store i64 %144, i64* %3, align 8
  store i32 1, i32* %16, align 4
  br label %187

145:                                              ; preds = %134
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @Lock(i32 %148)
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %151, align 8
  store %struct.TYPE_19__* %152, %struct.TYPE_19__** %15, align 8
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %154 = icmp ne %struct.TYPE_19__* %153, null
  br i1 %154, label %155, label %160

155:                                              ; preds = %145
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @AddRef(i32 %158)
  br label %160

160:                                              ; preds = %155, %145
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @Unlock(i32 %163)
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %166 = icmp ne %struct.TYPE_19__* %165, null
  br i1 %166, label %167, label %177

167:                                              ; preds = %160
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %176 = call i32 @CiGetSessionStatus(i32* %174, %struct.TYPE_19__* %175)
  br label %179

177:                                              ; preds = %167, %160
  %178 = load i64, i64* @ERR_LINK_IS_OFFLINE, align 8
  store i64 %178, i64* %10, align 8
  br label %179

179:                                              ; preds = %177, %172
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %181 = call i32 @ReleaseSession(%struct.TYPE_19__* %180)
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %183 = call i32 @ReleaseLink(%struct.TYPE_22__* %182)
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %185 = call i32 @ReleaseHub(%struct.TYPE_23__* %184)
  %186 = load i64, i64* %10, align 8
  store i64 %186, i64* %3, align 8
  store i32 1, i32* %16, align 4
  br label %187

187:                                              ; preds = %179, %141, %62, %47, %39
  %188 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %188)
  %189 = load i64, i64* %3, align 8
  ret i64 %189
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @UniIsEmptyStr(i32*) #2

declare dso_local i32 @LockHubList(i32*) #2

declare dso_local %struct.TYPE_23__* @GetHub(i32*, i8*) #2

declare dso_local i32 @UnlockHubList(i32*) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @UniStrCpy(i32*, i32, i32*) #2

declare dso_local i32 @FreeRpcLinkStatus(%struct.TYPE_21__*) #2

declare dso_local i32 @Zero(%struct.TYPE_21__*, i32) #2

declare dso_local i32 @LockList(i32) #2

declare dso_local i64 @LIST_NUM(i32) #2

declare dso_local %struct.TYPE_22__* @LIST_DATA(i32, i64) #2

declare dso_local i32 @Lock(i32) #2

declare dso_local i64 @UniStrCmpi(i32, i32*) #2

declare dso_local i32 @AddRef(i32) #2

declare dso_local i32 @Unlock(i32) #2

declare dso_local i32 @UnlockList(i32) #2

declare dso_local i32 @ReleaseHub(%struct.TYPE_23__*) #2

declare dso_local i32 @CiGetSessionStatus(i32*, %struct.TYPE_19__*) #2

declare dso_local i32 @ReleaseSession(%struct.TYPE_19__*) #2

declare dso_local i32 @ReleaseLink(%struct.TYPE_22__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
