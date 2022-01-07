; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StDeleteSession.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StDeleteSession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32, i32* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, i64, i64, i64 }
%struct.TYPE_18__ = type { i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@MAX_SESSION_NAME_LEN = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@CHECK_RIGHT = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"no_disconnect_session\00", align 1
@ERR_NOT_ENOUGH_RIGHT = common dso_local global i64 0, align 8
@SERVER_TYPE_FARM_CONTROLLER = common dso_local global i64 0, align 8
@ERR_OBJECT_NOT_FOUND = common dso_local global i64 0, align 8
@ERR_LINK_CANT_DISCONNECT = common dso_local global i64 0, align 8
@ERR_SNAT_CANT_DISCONNECT = common dso_local global i64 0, align 8
@ERR_BRIDGE_CANT_DISCONNECT = common dso_local global i64 0, align 8
@ERR_LAYER3_CANT_DISCONNECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"LA_DELETE_SESSION\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StDeleteSession(%struct.TYPE_19__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %6, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %23 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %23, i64* %9, align 8
  %24 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %10, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  %29 = load i32, i32* @MAX_SESSION_NAME_LEN, align 4
  %30 = add nsw i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %12, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @IsEmptyStr(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %39, i64* %3, align 8
  store i32 1, i32* %14, align 4
  br label %185

40:                                               ; preds = %2
  %41 = trunc i64 %26 to i32
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @StrCpy(i8* %28, i32 %41, i32 %44)
  %46 = trunc i64 %31 to i32
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @StrCpy(i8* %32, i32 %46, i32 %49)
  %51 = load i32, i32* @CHECK_RIGHT, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @LockHubList(i32* %52)
  %54 = load i32*, i32** %7, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32* @GetHub(i32* %54, i32 %57)
  store i32* %58, i32** %8, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @UnlockHubList(i32* %59)
  %61 = load i32*, i32** %8, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %40
  %64 = load i64, i64* @ERR_HUB_NOT_FOUND, align 8
  store i64 %64, i64* %3, align 8
  store i32 1, i32* %14, align 4
  br label %185

65:                                               ; preds = %40
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load i32*, i32** %8, align 8
  %72 = call i64 @GetHubAdminOption(i32* %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @ReleaseHub(i32* %75)
  %77 = load i64, i64* @ERR_NOT_ENOUGH_RIGHT, align 8
  store i64 %77, i64* %3, align 8
  store i32 1, i32* %14, align 4
  br label %185

78:                                               ; preds = %70, %65
  %79 = load i32*, i32** %8, align 8
  %80 = call %struct.TYPE_15__* @GetSessionByName(i32* %79, i8* %32)
  store %struct.TYPE_15__* %80, %struct.TYPE_15__** %13, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %82 = icmp eq %struct.TYPE_15__* %81, null
  br i1 %82, label %83, label %133

83:                                               ; preds = %78
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %130

89:                                               ; preds = %83
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @LockList(i32 %92)
  store i64 0, i64* %15, align 8
  br label %94

94:                                               ; preds = %122, %89
  %95 = load i64, i64* %15, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @LIST_NUM(i32 %98)
  %100 = icmp slt i64 %95, %99
  br i1 %100, label %101, label %125

101:                                              ; preds = %94
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i64, i64* %15, align 8
  %106 = call %struct.TYPE_18__* @LIST_DATA(i32 %104, i64 %105)
  store %struct.TYPE_18__* %106, %struct.TYPE_18__** %16, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %101
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @SiCallDeleteSession(%struct.TYPE_16__* %112, %struct.TYPE_18__* %113, i32 %116, i32 %119)
  br label %121

121:                                              ; preds = %111, %101
  br label %122

122:                                              ; preds = %121
  %123 = load i64, i64* %15, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %15, align 8
  br label %94

125:                                              ; preds = %94
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @UnlockList(i32 %128)
  br label %132

130:                                              ; preds = %83
  %131 = load i64, i64* @ERR_OBJECT_NOT_FOUND, align 8
  store i64 %131, i64* %9, align 8
  br label %132

132:                                              ; preds = %130, %125
  br label %170

133:                                              ; preds = %78
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = load i64, i64* @ERR_LINK_CANT_DISCONNECT, align 8
  store i64 %139, i64* %9, align 8
  br label %167

140:                                              ; preds = %133
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = load i64, i64* @ERR_SNAT_CANT_DISCONNECT, align 8
  store i64 %146, i64* %9, align 8
  br label %166

147:                                              ; preds = %140
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = load i64, i64* @ERR_BRIDGE_CANT_DISCONNECT, align 8
  store i64 %153, i64* %9, align 8
  br label %165

154:                                              ; preds = %147
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = load i64, i64* @ERR_LAYER3_CANT_DISCONNECT, align 8
  store i64 %160, i64* %9, align 8
  br label %164

161:                                              ; preds = %154
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %163 = call i32 @StopSession(%struct.TYPE_15__* %162)
  br label %164

164:                                              ; preds = %161, %159
  br label %165

165:                                              ; preds = %164, %152
  br label %166

166:                                              ; preds = %165, %145
  br label %167

167:                                              ; preds = %166, %138
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %169 = call i32 @ReleaseSession(%struct.TYPE_15__* %168)
  br label %170

170:                                              ; preds = %167, %132
  %171 = load i64, i64* %9, align 8
  %172 = load i64, i64* @ERR_NO_ERROR, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %181

174:                                              ; preds = %170
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %176 = load i32*, i32** %8, align 8
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @ALog(%struct.TYPE_19__* %175, i32* %176, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %179)
  br label %181

181:                                              ; preds = %174, %170
  %182 = load i32*, i32** %8, align 8
  %183 = call i32 @ReleaseHub(i32* %182)
  %184 = load i64, i64* %9, align 8
  store i64 %184, i64* %3, align 8
  store i32 1, i32* %14, align 4
  br label %185

185:                                              ; preds = %181, %74, %63, %38
  %186 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %186)
  %187 = load i64, i64* %3, align 8
  ret i64 %187
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IsEmptyStr(i32) #2

declare dso_local i32 @StrCpy(i8*, i32, i32) #2

declare dso_local i32 @LockHubList(i32*) #2

declare dso_local i32* @GetHub(i32*, i32) #2

declare dso_local i32 @UnlockHubList(i32*) #2

declare dso_local i64 @GetHubAdminOption(i32*, i8*) #2

declare dso_local i32 @ReleaseHub(i32*) #2

declare dso_local %struct.TYPE_15__* @GetSessionByName(i32*, i8*) #2

declare dso_local i32 @LockList(i32) #2

declare dso_local i64 @LIST_NUM(i32) #2

declare dso_local %struct.TYPE_18__* @LIST_DATA(i32, i64) #2

declare dso_local i32 @SiCallDeleteSession(%struct.TYPE_16__*, %struct.TYPE_18__*, i32, i32) #2

declare dso_local i32 @UnlockList(i32) #2

declare dso_local i32 @StopSession(%struct.TYPE_15__*) #2

declare dso_local i32 @ReleaseSession(%struct.TYPE_15__*) #2

declare dso_local i32 @ALog(%struct.TYPE_19__*, i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
