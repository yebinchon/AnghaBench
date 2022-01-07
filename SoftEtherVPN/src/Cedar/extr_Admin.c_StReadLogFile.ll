; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StReadLogFile.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StReadLogFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32*, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i32, i32* }
%struct.TYPE_23__ = type { i8*, i8*, i64, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, i32 }
%struct.TYPE_24__ = type { i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@MAX_HOST_NAME_LEN = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@SERVER_TYPE_FARM_CONTROLLER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@ERR_OBJECT_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"LA_READ_LOG_FILE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StReadLogFile(%struct.TYPE_25__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_23__, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_24__*, align 8
  %18 = alloca %struct.TYPE_23__, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  store %struct.TYPE_22__* %21, %struct.TYPE_22__** %6, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %7, align 8
  %25 = load i32, i32* @MAX_PATH, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %8, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %9, align 8
  %29 = load i32, i32* @MAX_HOST_NAME_LEN, align 4
  %30 = add nsw i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %10, align 8
  store i32 1, i32* %12, align 4
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @IsEmptyStr(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %39, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %204

40:                                               ; preds = %2
  %41 = trunc i64 %26 to i32
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @StrCpy(i8* %28, i32 %41, i8* %44)
  %46 = trunc i64 %31 to i32
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @StrCpy(i8* %32, i32 %46, i8* %49)
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %11, align 8
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %40
  %60 = trunc i64 %31 to i32
  %61 = call i32 @GetMachineName(i8* %32, i32 %60)
  br label %62

62:                                               ; preds = %59, %40
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = call i32 @Zero(%struct.TYPE_23__* %14, i32 32)
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %70 = call i64 @StEnumLogFile(%struct.TYPE_25__* %69, %struct.TYPE_23__* %14)
  store i64 %70, i64* %15, align 8
  %71 = call i32 @FreeRpcEnumLogFile(%struct.TYPE_23__* %14)
  %72 = load i64, i64* %15, align 8
  %73 = load i64, i64* @ERR_NO_ERROR, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i64, i64* %15, align 8
  store i64 %76, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %204

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %62
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @CheckLogFileNameFromEnumList(i32* %81, i8* %28, i8* %32)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i64, i64* @ERR_OBJECT_NOT_FOUND, align 8
  store i64 %85, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %204

86:                                               ; preds = %78
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %88 = call i32 @FreeRpcReadLogFile(%struct.TYPE_23__* %87)
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %90 = call i32 @Zero(%struct.TYPE_23__* %89, i32 32)
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %177

96:                                               ; preds = %86
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @LockList(i32 %99)
  store i64 0, i64* %16, align 8
  br label %101

101:                                              ; preds = %169, %96
  %102 = load i64, i64* %16, align 8
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @LIST_NUM(i32 %105)
  %107 = icmp slt i64 %102, %106
  br i1 %107, label %108, label %172

108:                                              ; preds = %101
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i64, i64* %16, align 8
  %113 = call %struct.TYPE_24__* @LIST_DATA(i32 %111, i64 %112)
  store %struct.TYPE_24__* %113, %struct.TYPE_24__** %17, align 8
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %168

118:                                              ; preds = %108
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @StrCmpi(i32 %121, i8* %32)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %167

124:                                              ; preds = %118
  %125 = call i32 @Zero(%struct.TYPE_23__* %18, i32 32)
  store i32 0, i32* %12, align 4
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @StrCpy(i8* %127, i32 8, i8* %32)
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @StrCpy(i8* %130, i32 8, i8* %28)
  %132 = load i64, i64* %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 2
  store i64 %132, i64* %133, align 8
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %136 = call i64 @SiCallReadLogFile(%struct.TYPE_22__* %134, %struct.TYPE_24__* %135, %struct.TYPE_23__* %18)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %165

138:                                              ; preds = %124
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 3
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %139, align 8
  %141 = icmp ne %struct.TYPE_26__* %140, null
  br i1 %141, label %142, label %164

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 3
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp sgt i64 %146, 0
  br i1 %147, label %148, label %164

148:                                              ; preds = %142
  %149 = call %struct.TYPE_26__* (...) @NewBuf()
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 3
  store %struct.TYPE_26__* %149, %struct.TYPE_26__** %151, align 8
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 3
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 3
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @WriteBuf(%struct.TYPE_26__* %154, i32 %158, i64 %162)
  br label %164

164:                                              ; preds = %148, %142, %138
  br label %165

165:                                              ; preds = %164, %124
  %166 = call i32 @FreeRpcReadLogFile(%struct.TYPE_23__* %18)
  br label %172

167:                                              ; preds = %118
  br label %168

168:                                              ; preds = %167, %108
  br label %169

169:                                              ; preds = %168
  %170 = load i64, i64* %16, align 8
  %171 = add nsw i64 %170, 1
  store i64 %171, i64* %16, align 8
  br label %101

172:                                              ; preds = %165, %101
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @UnlockList(i32 %175)
  br label %177

177:                                              ; preds = %172, %86
  %178 = load i32, i32* %12, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %177
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %182 = load i64, i64* %11, align 8
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %184 = call i32 @SiReadLocalLogFile(%struct.TYPE_22__* %181, i8* %28, i64 %182, %struct.TYPE_23__* %183)
  br label %185

185:                                              ; preds = %180, %177
  %186 = load i64, i64* %11, align 8
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %190 = call i32 @ALog(%struct.TYPE_25__* %189, i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %28)
  br label %191

191:                                              ; preds = %188, %185
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @StrCpy(i8* %194, i32 8, i8* %28)
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @StrCpy(i8* %198, i32 8, i8* %32)
  %200 = load i64, i64* %11, align 8
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 2
  store i64 %200, i64* %202, align 8
  %203 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %203, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %204

204:                                              ; preds = %191, %84, %75, %38
  %205 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %205)
  %206 = load i64, i64* %3, align 8
  ret i64 %206
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IsEmptyStr(i8*) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @GetMachineName(i8*, i32) #2

declare dso_local i32 @Zero(%struct.TYPE_23__*, i32) #2

declare dso_local i64 @StEnumLogFile(%struct.TYPE_25__*, %struct.TYPE_23__*) #2

declare dso_local i32 @FreeRpcEnumLogFile(%struct.TYPE_23__*) #2

declare dso_local i32 @CheckLogFileNameFromEnumList(i32*, i8*, i8*) #2

declare dso_local i32 @FreeRpcReadLogFile(%struct.TYPE_23__*) #2

declare dso_local i32 @LockList(i32) #2

declare dso_local i64 @LIST_NUM(i32) #2

declare dso_local %struct.TYPE_24__* @LIST_DATA(i32, i64) #2

declare dso_local i64 @StrCmpi(i32, i8*) #2

declare dso_local i64 @SiCallReadLogFile(%struct.TYPE_22__*, %struct.TYPE_24__*, %struct.TYPE_23__*) #2

declare dso_local %struct.TYPE_26__* @NewBuf(...) #2

declare dso_local i32 @WriteBuf(%struct.TYPE_26__*, i32, i64) #2

declare dso_local i32 @UnlockList(i32) #2

declare dso_local i32 @SiReadLocalLogFile(%struct.TYPE_22__*, i8*, i64, %struct.TYPE_23__*) #2

declare dso_local i32 @ALog(%struct.TYPE_25__*, i32*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
