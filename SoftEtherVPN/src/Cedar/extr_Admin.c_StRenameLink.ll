; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StRenameLink.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StRenameLink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i32* }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__*, i32, i32 }
%struct.TYPE_17__ = type { i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@SERVER_TYPE_STANDALONE = common dso_local global i64 0, align 8
@ERR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@CHECK_RIGHT = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"no_cascade\00", align 1
@ERR_NOT_ENOUGH_RIGHT = common dso_local global i64 0, align 8
@ERR_LINK_ALREADY_EXISTS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"LA_RENAME_LINK\00", align 1
@ERR_OBJECT_NOT_FOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StRenameLink(%struct.TYPE_22__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %7, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %8, align 8
  %21 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %21, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @UniIsEmptyStr(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %2
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @UniIsEmptyStr(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %2
  %34 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %34, i64* %3, align 8
  br label %212

35:                                               ; preds = %27
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i64, i64* @ERR_NOT_SUPPORTED, align 8
  store i64 %42, i64* %3, align 8
  br label %212

43:                                               ; preds = %35
  %44 = load i32, i32* @CHECK_RIGHT, align 4
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @UniStrCmpi(i32 %47, i32 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %54, i64* %3, align 8
  br label %212

55:                                               ; preds = %43
  %56 = load i32*, i32** %8, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.TYPE_21__* @GetHub(i32* %56, i32 %59)
  store %struct.TYPE_21__* %60, %struct.TYPE_21__** %9, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %62 = icmp eq %struct.TYPE_21__* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i64, i64* @ERR_HUB_NOT_FOUND, align 8
  store i64 %64, i64* %3, align 8
  br label %212

65:                                               ; preds = %55
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %72 = call i64 @GetHubAdminOption(%struct.TYPE_21__* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %76 = call i32 @ReleaseHub(%struct.TYPE_21__* %75)
  %77 = load i64, i64* @ERR_NOT_ENOUGH_RIGHT, align 8
  store i64 %77, i64* %3, align 8
  br label %212

78:                                               ; preds = %70, %65
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %11, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @LockList(i32 %81)
  store i64 0, i64* %6, align 8
  br label %83

83:                                               ; preds = %125, %78
  %84 = load i64, i64* %6, align 8
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @LIST_NUM(i32 %87)
  %89 = icmp slt i64 %84, %88
  br i1 %89, label %90, label %128

90:                                               ; preds = %83
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* %6, align 8
  %95 = call %struct.TYPE_20__* @LIST_DATA(i32 %93, i64 %94)
  store %struct.TYPE_20__* %95, %struct.TYPE_20__** %13, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @Lock(i32 %98)
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @UniStrCmpi(i32 %104, i32 %107)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %90
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %111, %struct.TYPE_20__** %11, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @AddRef(i32 %114)
  br label %116

116:                                              ; preds = %110, %90
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @Unlock(i32 %119)
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %122 = icmp ne %struct.TYPE_20__* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %128

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %6, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %6, align 8
  br label %83

128:                                              ; preds = %123, %83
  store i32 0, i32* %12, align 4
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %130 = icmp ne %struct.TYPE_20__* %129, null
  br i1 %130, label %131, label %195

131:                                              ; preds = %128
  store i64 0, i64* %6, align 8
  br label %132

132:                                              ; preds = %165, %131
  %133 = load i64, i64* %6, align 8
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @LIST_NUM(i32 %136)
  %138 = icmp slt i64 %133, %137
  br i1 %138, label %139, label %168

139:                                              ; preds = %132
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i64, i64* %6, align 8
  %144 = call %struct.TYPE_20__* @LIST_DATA(i32 %142, i64 %143)
  store %struct.TYPE_20__* %144, %struct.TYPE_20__** %14, align 8
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @Lock(i32 %147)
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @UniStrCmpi(i32 %153, i32 %156)
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %139
  store i32 1, i32* %12, align 4
  br label %160

160:                                              ; preds = %159, %139
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @Unlock(i32 %163)
  br label %165

165:                                              ; preds = %160
  %166 = load i64, i64* %6, align 8
  %167 = add nsw i64 %166, 1
  store i64 %167, i64* %6, align 8
  br label %132

168:                                              ; preds = %132
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %168
  %172 = load i64, i64* @ERR_LINK_ALREADY_EXISTS, align 8
  store i64 %172, i64* %10, align 8
  br label %194

173:                                              ; preds = %168
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @UniStrCpy(i32 %178, i32 4, i32 %181)
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @ALog(%struct.TYPE_22__* %183, %struct.TYPE_21__* %184, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %187, i32 %190)
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %193 = call i32 @IncrementServerConfigRevision(%struct.TYPE_18__* %192)
  br label %194

194:                                              ; preds = %173, %171
  br label %195

195:                                              ; preds = %194, %128
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @UnlockList(i32 %198)
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %201 = icmp eq %struct.TYPE_20__* %200, null
  br i1 %201, label %202, label %206

202:                                              ; preds = %195
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %204 = call i32 @ReleaseHub(%struct.TYPE_21__* %203)
  %205 = load i64, i64* @ERR_OBJECT_NOT_FOUND, align 8
  store i64 %205, i64* %3, align 8
  br label %212

206:                                              ; preds = %195
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %208 = call i32 @ReleaseLink(%struct.TYPE_20__* %207)
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %210 = call i32 @ReleaseHub(%struct.TYPE_21__* %209)
  %211 = load i64, i64* %10, align 8
  store i64 %211, i64* %3, align 8
  br label %212

212:                                              ; preds = %206, %202, %74, %63, %53, %41, %33
  %213 = load i64, i64* %3, align 8
  ret i64 %213
}

declare dso_local i64 @UniIsEmptyStr(i32) #1

declare dso_local i64 @UniStrCmpi(i32, i32) #1

declare dso_local %struct.TYPE_21__* @GetHub(i32*, i32) #1

declare dso_local i64 @GetHubAdminOption(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @ReleaseHub(%struct.TYPE_21__*) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_20__* @LIST_DATA(i32, i64) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local i32 @ALog(%struct.TYPE_22__*, %struct.TYPE_21__*, i8*, i32, i32) #1

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_18__*) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @ReleaseLink(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
