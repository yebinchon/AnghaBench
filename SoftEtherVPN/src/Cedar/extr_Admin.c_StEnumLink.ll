; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumLink.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumLink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i32* }
%struct.TYPE_21__ = type { i8*, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i8*, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_18__*, i64, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i64, i32, i32 }
%struct.TYPE_17__ = type { i8*, i8*, i32 }

@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@SERVER_TYPE_STANDALONE = common dso_local global i64 0, align 8
@ERR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@CHECK_RIGHT = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i64 0, align 8
@CLIENT_STATUS_ESTABLISHED = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StEnumLink(%struct.TYPE_24__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  store %struct.TYPE_19__* %17, %struct.TYPE_19__** %6, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %7, align 8
  %21 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %9, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SERVER_TYPE_STANDALONE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i64, i64* @ERR_NOT_SUPPORTED, align 8
  store i64 %32, i64* %3, align 8
  store i32 1, i32* %12, align 4
  br label %189

33:                                               ; preds = %2
  %34 = load i32, i32* @CHECK_RIGHT, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @LockHubList(i32* %35)
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call %struct.TYPE_23__* @GetHub(i32* %37, i8* %40)
  store %struct.TYPE_23__* %41, %struct.TYPE_23__** %8, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @UnlockHubList(i32* %42)
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %45 = icmp eq %struct.TYPE_23__* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = load i64, i64* @ERR_HUB_NOT_FOUND, align 8
  store i64 %47, i64* %3, align 8
  store i32 1, i32* %12, align 4
  br label %189

48:                                               ; preds = %33
  %49 = trunc i64 %23 to i32
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @StrCpy(i8* %25, i32 %49, i8* %52)
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %55 = call i32 @FreeRpcEnumLink(%struct.TYPE_21__* %54)
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %57 = call i32 @Zero(%struct.TYPE_21__* %56, i32 24)
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @StrCpy(i8* %60, i32 8, i8* %25)
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @LockList(i32 %64)
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @LIST_NUM(i32 %68)
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = mul i64 40, %74
  %76 = trunc i64 %75 to i32
  %77 = call %struct.TYPE_20__* @ZeroMalloc(i32 %76)
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 2
  store %struct.TYPE_20__* %77, %struct.TYPE_20__** %79, align 8
  store i64 0, i64* %11, align 8
  br label %80

80:                                               ; preds = %178, %48
  %81 = load i64, i64* %11, align 8
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @LIST_NUM(i32 %84)
  %86 = icmp ult i64 %81, %85
  br i1 %86, label %87, label %181

87:                                               ; preds = %80
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* %11, align 8
  %92 = call %struct.TYPE_22__* @LIST_DATA(i32 %90, i64 %91)
  store %struct.TYPE_22__* %92, %struct.TYPE_22__** %13, align 8
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %94, align 8
  %96 = load i64, i64* %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i64 %96
  store %struct.TYPE_20__* %97, %struct.TYPE_20__** %14, align 8
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @Lock(i32 %100)
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @UniStrCpy(i32 %104, i32 4, i32 %109)
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @StrCpy(i8* %113, i32 8, i8* %118)
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @StrCpy(i8* %122, i32 8, i8* %127)
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 0, i32 1
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %173

141:                                              ; preds = %87
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %143, align 8
  %145 = icmp ne %struct.TYPE_18__* %144, null
  br i1 %145, label %146, label %172

146:                                              ; preds = %141
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @TickToTime(i32 %151)
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 5
  store i32 %152, i32* %154, align 4
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @CLIENT_STATUS_ESTABLISHED, align 8
  %161 = icmp eq i64 %159, %160
  %162 = zext i1 %161 to i32
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 4
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 8
  br label %172

172:                                              ; preds = %146, %141
  br label %173

173:                                              ; preds = %172, %87
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @Unlock(i32 %176)
  br label %178

178:                                              ; preds = %173
  %179 = load i64, i64* %11, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %11, align 8
  br label %80

181:                                              ; preds = %80
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @UnlockList(i32 %184)
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %187 = call i32 @ReleaseHub(%struct.TYPE_23__* %186)
  %188 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %188, i64* %3, align 8
  store i32 1, i32* %12, align 4
  br label %189

189:                                              ; preds = %181, %46, %31
  %190 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %190)
  %191 = load i64, i64* %3, align 8
  ret i64 %191
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LockHubList(i32*) #2

declare dso_local %struct.TYPE_23__* @GetHub(i32*, i8*) #2

declare dso_local i32 @UnlockHubList(i32*) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @FreeRpcEnumLink(%struct.TYPE_21__*) #2

declare dso_local i32 @Zero(%struct.TYPE_21__*, i32) #2

declare dso_local i32 @LockList(i32) #2

declare dso_local i64 @LIST_NUM(i32) #2

declare dso_local %struct.TYPE_20__* @ZeroMalloc(i32) #2

declare dso_local %struct.TYPE_22__* @LIST_DATA(i32, i64) #2

declare dso_local i32 @Lock(i32) #2

declare dso_local i32 @UniStrCpy(i32, i32, i32) #2

declare dso_local i32 @TickToTime(i32) #2

declare dso_local i32 @Unlock(i32) #2

declare dso_local i32 @UnlockList(i32) #2

declare dso_local i32 @ReleaseHub(%struct.TYPE_23__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
