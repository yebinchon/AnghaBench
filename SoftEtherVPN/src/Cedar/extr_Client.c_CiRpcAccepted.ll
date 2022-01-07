; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiRpcAccepted.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiRpcAccepted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, i64*, i32, %struct.TYPE_23__, i64, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_28__ = type { i64*, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_26__ = type { i32* }

@SHA1_SIZE = common dso_local global i32 0, align 4
@CLIENT_RPC_MODE_NOTIFY = common dso_local global i64 0, align 8
@CLIENT_RPC_MODE_SHORTCUT = common dso_local global i64 0, align 8
@CLIENT_RPC_MODE_SHORTCUT_DISCONNECT = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_ACCOUNT_NAME_LEN = common dso_local global i32 0, align 4
@ERR_ACCOUNT_NOT_FOUND = common dso_local global i64 0, align 8
@CiRpcDispatch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CiRpcAccepted(%struct.TYPE_27__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_28__*, align 8
  %19 = alloca %struct.TYPE_26__, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %4, align 8
  %20 = load i32, i32* @SHA1_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %5, align 8
  %23 = alloca i64, i64 %21, align 16
  store i64 %21, i64* %6, align 8
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %25 = icmp eq %struct.TYPE_27__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %28 = icmp eq %struct.TYPE_25__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %2
  store i32 1, i32* %10, align 4
  br label %236

30:                                               ; preds = %26
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %32 = call i32 @RecvAll(%struct.TYPE_25__* %31, i64* %7, i32 8, i32 0)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 1, i32* %10, align 4
  br label %236

35:                                               ; preds = %30
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @Endian32(i64 %36)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @CLIENT_RPC_MODE_NOTIFY, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %44 = call i32 @CiNotifyMain(%struct.TYPE_27__* %42, %struct.TYPE_25__* %43)
  store i32 1, i32* %10, align 4
  br label %236

45:                                               ; preds = %35
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @CLIENT_RPC_MODE_SHORTCUT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @CLIENT_RPC_MODE_SHORTCUT_DISCONNECT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %163

53:                                               ; preds = %49, %45
  %54 = load i32, i32* @SHA1_SIZE, align 4
  %55 = zext i32 %54 to i64
  %56 = call i8* @llvm.stacksave()
  store i8* %56, i8** %11, align 8
  %57 = alloca i64, i64 %55, align 16
  store i64 %55, i64* %12, align 8
  %58 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %58, i64* %13, align 8
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %60 = load i32, i32* @SHA1_SIZE, align 4
  %61 = call i32 @RecvAll(%struct.TYPE_25__* %59, i64* %57, i32 %60, i32 0)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %161

63:                                               ; preds = %53
  %64 = load i32, i32* @MAX_ACCOUNT_NAME_LEN, align 4
  %65 = add nsw i32 %64, 1
  %66 = zext i32 %65 to i64
  %67 = call i8* @llvm.stacksave()
  store i8* %67, i8** %15, align 8
  %68 = alloca i32, i64 %66, align 16
  store i64 %66, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @LockList(i32 %71)
  store i64 0, i64* %14, align 8
  br label %73

73:                                               ; preds = %110, %63
  %74 = load i64, i64* %14, align 8
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @LIST_NUM(i32 %77)
  %79 = icmp slt i64 %74, %78
  br i1 %79, label %80, label %113

80:                                               ; preds = %73
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = load i64, i64* %14, align 8
  %85 = call %struct.TYPE_28__* @LIST_DATA(i32 %83, i64 %84)
  store %struct.TYPE_28__* %85, %struct.TYPE_28__** %18, align 8
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %87 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @Lock(i32 %88)
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* @SHA1_SIZE, align 4
  %94 = call i64 @Cmp(i64* %92, i64* %57, i32 %93)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %80
  store i32 1, i32* %17, align 4
  %97 = mul nuw i64 4, %66
  %98 = trunc i64 %97 to i32
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @UniStrCpy(i32* %68, i32 %98, i32* %103)
  br label %105

105:                                              ; preds = %96, %80
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @Unlock(i32 %108)
  br label %110

110:                                              ; preds = %105
  %111 = load i64, i64* %14, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %14, align 8
  br label %73

113:                                              ; preds = %73
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @UnlockList(i32 %116)
  %118 = load i32, i32* %17, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i64, i64* @ERR_ACCOUNT_NOT_FOUND, align 8
  store i64 %121, i64* %13, align 8
  br label %153

122:                                              ; preds = %113
  %123 = call i32 @Zero(%struct.TYPE_26__* %19, i32 8)
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @UniStrCpy(i32* %125, i32 8, i32* %68)
  %127 = load i64, i64* %7, align 8
  %128 = load i64, i64* @CLIENT_RPC_MODE_SHORTCUT, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %122
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %132 = call i64 @CtConnect(%struct.TYPE_27__* %131, %struct.TYPE_26__* %19)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %135, i64* %13, align 8
  br label %140

136:                                              ; preds = %130
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %13, align 8
  br label %140

140:                                              ; preds = %136, %134
  br label %152

141:                                              ; preds = %122
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %143 = call i64 @CtDisconnect(%struct.TYPE_27__* %142, %struct.TYPE_26__* %19, i32 0)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %146, i64* %13, align 8
  br label %151

147:                                              ; preds = %141
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %13, align 8
  br label %151

151:                                              ; preds = %147, %145
  br label %152

152:                                              ; preds = %151, %140
  br label %153

153:                                              ; preds = %152, %120
  %154 = load i64, i64* %13, align 8
  %155 = call i64 @Endian32(i64 %154)
  store i64 %155, i64* %13, align 8
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %157 = call i32 @SendAll(%struct.TYPE_25__* %156, i64* %13, i32 8, i32 0)
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %159 = call i32 @RecvAll(%struct.TYPE_25__* %158, i64* %13, i32 8, i32 0)
  %160 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %160)
  br label %161

161:                                              ; preds = %153, %53
  store i32 1, i32* %10, align 4
  %162 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %162)
  br label %236

163:                                              ; preds = %49
  br label %164

164:                                              ; preds = %163
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %166 = load i32, i32* @SHA1_SIZE, align 4
  %167 = call i32 @RecvAll(%struct.TYPE_25__* %165, i64* %23, i32 %166, i32 0)
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  store i32 1, i32* %10, align 4
  br label %236

170:                                              ; preds = %164
  store i64 0, i64* %8, align 8
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i32 0, i32 1
  %173 = load i64*, i64** %172, align 8
  %174 = load i32, i32* @SHA1_SIZE, align 4
  %175 = call i64 @Cmp(i64* %23, i64* %173, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %170
  store i64 1, i64* %8, align 8
  br label %178

178:                                              ; preds = %177, %170
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %178
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 127
  br i1 %190, label %191, label %192

191:                                              ; preds = %183
  store i64 0, i64* %8, align 8
  br label %192

192:                                              ; preds = %191, %183, %178
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @Lock(i32 %195)
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %192
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 127
  br i1 %209, label %210, label %211

210:                                              ; preds = %202
  store i64 2, i64* %8, align 8
  br label %211

211:                                              ; preds = %210, %202
  br label %212

212:                                              ; preds = %211, %192
  %213 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @Unlock(i32 %215)
  %217 = load i64, i64* %8, align 8
  %218 = call i64 @Endian32(i64 %217)
  store i64 %218, i64* %8, align 8
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %220 = call i32 @SendAll(%struct.TYPE_25__* %219, i64* %8, i32 8, i32 0)
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %212
  store i32 1, i32* %10, align 4
  br label %236

223:                                              ; preds = %212
  %224 = load i64, i64* %8, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %223
  store i32 1, i32* %10, align 4
  br label %236

227:                                              ; preds = %223
  %228 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %229 = load i32, i32* @CiRpcDispatch, align 4
  %230 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %231 = call i32* @StartRpcServer(%struct.TYPE_25__* %228, i32 %229, %struct.TYPE_27__* %230)
  store i32* %231, i32** %9, align 8
  %232 = load i32*, i32** %9, align 8
  %233 = call i32 @RpcServer(i32* %232)
  %234 = load i32*, i32** %9, align 8
  %235 = call i32 @EndRpc(i32* %234)
  store i32 0, i32* %10, align 4
  br label %236

236:                                              ; preds = %227, %226, %222, %169, %161, %41, %34, %29
  %237 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %237)
  %238 = load i32, i32* %10, align 4
  switch i32 %238, label %240 [
    i32 0, label %239
    i32 1, label %239
  ]

239:                                              ; preds = %236, %236
  ret void

240:                                              ; preds = %236
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RecvAll(%struct.TYPE_25__*, i64*, i32, i32) #2

declare dso_local i64 @Endian32(i64) #2

declare dso_local i32 @CiNotifyMain(%struct.TYPE_27__*, %struct.TYPE_25__*) #2

declare dso_local i32 @LockList(i32) #2

declare dso_local i64 @LIST_NUM(i32) #2

declare dso_local %struct.TYPE_28__* @LIST_DATA(i32, i64) #2

declare dso_local i32 @Lock(i32) #2

declare dso_local i64 @Cmp(i64*, i64*, i32) #2

declare dso_local i32 @UniStrCpy(i32*, i32, i32*) #2

declare dso_local i32 @Unlock(i32) #2

declare dso_local i32 @UnlockList(i32) #2

declare dso_local i32 @Zero(%struct.TYPE_26__*, i32) #2

declare dso_local i64 @CtConnect(%struct.TYPE_27__*, %struct.TYPE_26__*) #2

declare dso_local i64 @CtDisconnect(%struct.TYPE_27__*, %struct.TYPE_26__*, i32) #2

declare dso_local i32 @SendAll(%struct.TYPE_25__*, i64*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32* @StartRpcServer(%struct.TYPE_25__*, i32, %struct.TYPE_27__*) #2

declare dso_local i32 @RpcServer(i32*) #2

declare dso_local i32 @EndRpc(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
