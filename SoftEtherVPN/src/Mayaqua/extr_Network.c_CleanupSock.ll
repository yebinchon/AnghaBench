; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_CleanupSock.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_CleanupSock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, i32*, i32*, i32*, %struct.TYPE_9__*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@INVALID_SOCKET = common dso_local global i64 0, align 8
@num_tcp_connections = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CleanupSock(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = icmp eq %struct.TYPE_9__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %252

8:                                                ; preds = %1
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = call i32 @Disconnect(%struct.TYPE_9__* %9)
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 22
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15, %24
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 22
  %19 = load i32*, i32** %18, align 8
  %20 = call %struct.TYPE_9__* @GetNext(i32* %19)
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %3, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = icmp eq %struct.TYPE_9__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %29

24:                                               ; preds = %16
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = call i32 @Disconnect(%struct.TYPE_9__* %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = call i32 @ReleaseSock(%struct.TYPE_9__* %27)
  br label %16

29:                                               ; preds = %23
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 22
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @ReleaseQueue(i32* %32)
  br label %34

34:                                               ; preds = %29, %8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 21
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 21
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @ReleaseEvent(i32* %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 20
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %68

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %58
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 20
  %53 = load i32*, i32** %52, align 8
  %54 = call %struct.TYPE_9__* @GetNext(i32* %53)
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** %4, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = icmp eq %struct.TYPE_9__* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %63

58:                                               ; preds = %50
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = call i32 @Disconnect(%struct.TYPE_9__* %59)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = call i32 @ReleaseSock(%struct.TYPE_9__* %61)
  br label %50

63:                                               ; preds = %57
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 20
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @ReleaseQueue(i32* %66)
  br label %68

68:                                               ; preds = %63, %44
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 19
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 19
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @ReleaseEvent(i32* %76)
  br label %78

78:                                               ; preds = %73, %68
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 18
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 18
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @TubeDisconnect(i32* %86)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 18
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @ReleaseTube(i32* %90)
  br label %92

92:                                               ; preds = %83, %78
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 17
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 17
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @TubeDisconnect(i32* %100)
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 17
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @ReleaseTube(i32* %104)
  br label %106

106:                                              ; preds = %97, %92
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 16
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %120

111:                                              ; preds = %106
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 16
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @TubeDisconnect(i32* %114)
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 16
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @ReleaseTube(i32* %118)
  br label %120

120:                                              ; preds = %111, %106
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 15
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %134

125:                                              ; preds = %120
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 15
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @TubeDisconnect(i32* %128)
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 15
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @ReleaseTube(i32* %132)
  br label %134

134:                                              ; preds = %125, %120
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 14
  %137 = load i32*, i32** %136, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 14
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @ReleaseSharedBuffer(i32* %142)
  br label %144

144:                                              ; preds = %139, %134
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 13
  %147 = load i32*, i32** %146, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 13
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @ReleaseSharedBuffer(i32* %152)
  br label %154

154:                                              ; preds = %149, %144
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 12
  %157 = load i32*, i32** %156, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 12
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @ReleaseFifo(i32* %162)
  br label %164

164:                                              ; preds = %159, %154
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 11
  %167 = load i32*, i32** %166, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %174

169:                                              ; preds = %164
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 11
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @FreeRUDP(i32* %172)
  br label %174

174:                                              ; preds = %169, %164
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %176 = call i32 @UnixFreeAsyncSocket(%struct.TYPE_9__* %175)
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 10
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @FreeBuf(i32 %179)
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @INVALID_SOCKET, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %191

186:                                              ; preds = %174
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @close(i64 %189)
  br label %191

191:                                              ; preds = %186, %174
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 9
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %193, align 8
  %195 = call i32 @Free(%struct.TYPE_9__* %194)
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 7
  %198 = load i32*, i32** %197, align 8
  %199 = icmp ne i32* %198, null
  br i1 %199, label %200, label %207

200:                                              ; preds = %191
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 7
  %203 = load i32*, i32** %202, align 8
  %204 = call i32 @FreeX(i32* %203)
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 7
  store i32* null, i32** %206, align 8
  br label %207

207:                                              ; preds = %200, %191
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 6
  %210 = load i32*, i32** %209, align 8
  %211 = icmp ne i32* %210, null
  br i1 %211, label %212, label %219

212:                                              ; preds = %207
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 6
  %215 = load i32*, i32** %214, align 8
  %216 = call i32 @FreeX(i32* %215)
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 6
  store i32* null, i32** %218, align 8
  br label %219

219:                                              ; preds = %212, %207
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 5
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %221, align 8
  %223 = icmp ne %struct.TYPE_9__* %222, null
  br i1 %223, label %224, label %231

224:                                              ; preds = %219
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 5
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %226, align 8
  %228 = call i32 @Free(%struct.TYPE_9__* %227)
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 5
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %230, align 8
  br label %231

231:                                              ; preds = %224, %219
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 4
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %233, align 8
  %235 = call i32 @Free(%struct.TYPE_9__* %234)
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @DeleteLock(i32 %238)
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @DeleteLock(i32 %242)
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @DeleteLock(i32 %246)
  %248 = load i32, i32* @num_tcp_connections, align 4
  %249 = call i32 @Dec(i32 %248)
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %251 = call i32 @Free(%struct.TYPE_9__* %250)
  br label %252

252:                                              ; preds = %231, %7
  ret void
}

declare dso_local i32 @Disconnect(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @GetNext(i32*) #1

declare dso_local i32 @ReleaseSock(%struct.TYPE_9__*) #1

declare dso_local i32 @ReleaseQueue(i32*) #1

declare dso_local i32 @ReleaseEvent(i32*) #1

declare dso_local i32 @TubeDisconnect(i32*) #1

declare dso_local i32 @ReleaseTube(i32*) #1

declare dso_local i32 @ReleaseSharedBuffer(i32*) #1

declare dso_local i32 @ReleaseFifo(i32*) #1

declare dso_local i32 @FreeRUDP(i32*) #1

declare dso_local i32 @UnixFreeAsyncSocket(%struct.TYPE_9__*) #1

declare dso_local i32 @FreeBuf(i32) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @Free(%struct.TYPE_9__*) #1

declare dso_local i32 @FreeX(i32*) #1

declare dso_local i32 @DeleteLock(i32) #1

declare dso_local i32 @Dec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
