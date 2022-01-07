; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_UdpAccel.c_NewUdpAccel.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_UdpAccel.c_NewUdpAccel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_10__*, i8*, i8*, i32, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }

@UDP_SERVER_PORT_LOWER = common dso_local global i64 0, align 8
@UDP_SERVER_PORT_HIGHER = common dso_local global i64 0, align 8
@MTU_FOR_PPPOE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Udp Accel My Port = %u\0A\00", align 1
@NatT_GetIpThread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @NewUdpAccel(%struct.TYPE_11__* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = call i64 @IsZeroIP(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32* null, i32** %8, align 8
  br label %21

21:                                               ; preds = %20, %5
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %21
  %28 = load i32*, i32** %8, align 8
  %29 = call %struct.TYPE_10__* @NewUDPEx3(i64 0, i32* %28)
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %13, align 8
  br label %82

30:                                               ; preds = %24
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %13, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @LockList(i32 %33)
  %35 = load i64, i64* @UDP_SERVER_PORT_LOWER, align 8
  store i64 %35, i64* %16, align 8
  br label %36

36:                                               ; preds = %56, %30
  %37 = load i64, i64* %16, align 8
  %38 = load i64, i64* @UDP_SERVER_PORT_HIGHER, align 8
  %39 = icmp sle i64 %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %36
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %16, align 8
  %45 = call i32 @IsIntInList(i32 %43, i64 %44)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load i64, i64* %16, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call %struct.TYPE_10__* @NewUDPEx3(i64 %48, i32* %49)
  store %struct.TYPE_10__* %50, %struct.TYPE_10__** %13, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %52 = icmp ne %struct.TYPE_10__* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 1, i32* %15, align 4
  br label %59

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %40
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %16, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %16, align 8
  br label %36

59:                                               ; preds = %53, %36
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %61 = icmp eq %struct.TYPE_10__* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32*, i32** %8, align 8
  %64 = call %struct.TYPE_10__* @NewUDPEx3(i64 0, i32* %63)
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %13, align 8
  br label %65

65:                                               ; preds = %62, %59
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %67 = icmp ne %struct.TYPE_10__* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* %16, align 8
  %76 = call i32 @AddIntDistinct(i32 %74, i64 %75)
  br label %77

77:                                               ; preds = %71, %68, %65
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @UnlockList(i32 %80)
  br label %82

82:                                               ; preds = %77, %27
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %84 = icmp eq %struct.TYPE_10__* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  br label %225

86:                                               ; preds = %82
  %87 = call %struct.TYPE_9__* @ZeroMalloc(i32 120)
  store %struct.TYPE_9__* %87, %struct.TYPE_9__** %12, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 20
  store %struct.TYPE_11__* %88, %struct.TYPE_11__** %90, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 20
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @AddRef(i32 %95)
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = call i32 (...) @Rand64()
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 19
  store i32 %100, i32* %102, align 8
  %103 = call i8* (...) @Tick64()
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 18
  store i8* %103, i8** %105, align 8
  %106 = load i32, i32* %15, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = call i8* (...) @Tick64()
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 17
  store i8* %112, i8** %114, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 16
  store %struct.TYPE_10__* %115, %struct.TYPE_10__** %117, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 15
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @Rand(i32 %120, i32 4)
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 14
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @Rand(i32 %124, i32 4)
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 13
  %128 = load i32*, i32** %8, align 8
  %129 = call i32 @Copy(i32* %127, i32* %128, i32 4)
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 9
  store i32 %132, i32* %134, align 4
  %135 = load i32*, i32** %8, align 8
  %136 = call i32 @IsIP6(i32* %135)
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 4
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %86
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  store i32 1, i32* %145, align 8
  br label %146

146:                                              ; preds = %143, %86
  %147 = call i32 (...) @NewQueue()
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 12
  store i32 %147, i32* %149, align 4
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 11
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @Rand(i32 %152, i32 4)
  br label %154

154:                                              ; preds = %159, %146
  %155 = call i8* (...) @Rand32()
  %156 = ptrtoint i8* %155 to i64
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 4
  store i64 %156, i64* %158, align 8
  br label %159

159:                                              ; preds = %154
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %154, label %164

164:                                              ; preds = %159
  br label %165

165:                                              ; preds = %183, %164
  %166 = call i8* (...) @Rand32()
  %167 = ptrtoint i8* %166 to i64
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 5
  store i64 %167, i64* %169, align 8
  br label %170

170:                                              ; preds = %165
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %183, label %175

175:                                              ; preds = %170
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 4
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 5
  %181 = load i64, i64* %180, align 8
  %182 = icmp eq i64 %178, %181
  br label %183

183:                                              ; preds = %175, %170
  %184 = phi i1 [ true, %170 ], [ %182, %175 ]
  br i1 %184, label %165, label %185

185:                                              ; preds = %183
  %186 = load i64, i64* @MTU_FOR_PPPOE, align 8
  store i64 %186, i64* %14, align 8
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = load i64, i64* %14, align 8
  %193 = sub nsw i64 %192, 20
  store i64 %193, i64* %14, align 8
  br label %197

194:                                              ; preds = %185
  %195 = load i64, i64* %14, align 8
  %196 = sub nsw i64 %195, 40
  store i64 %196, i64* %14, align 8
  br label %197

197:                                              ; preds = %194, %191
  %198 = load i64, i64* %14, align 8
  %199 = sub nsw i64 %198, 8
  store i64 %199, i64* %14, align 8
  %200 = load i64, i64* %14, align 8
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 10
  store i64 %200, i64* %202, align 8
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 9
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @Debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %205)
  %207 = call i32 (...) @NewLock()
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 8
  store i32 %207, i32* %209, align 8
  %210 = call i32 (...) @NewEvent()
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 7
  store i32 %210, i32* %212, align 4
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %197
  %218 = load i32, i32* @NatT_GetIpThread, align 4
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %220 = call i32 @NewThread(i32 %218, %struct.TYPE_9__* %219)
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 6
  store i32 %220, i32* %222, align 8
  br label %223

223:                                              ; preds = %217, %197
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %224, %struct.TYPE_9__** %6, align 8
  br label %225

225:                                              ; preds = %223, %85
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  ret %struct.TYPE_9__* %226
}

declare dso_local i64 @IsZeroIP(i32*) #1

declare dso_local %struct.TYPE_10__* @NewUDPEx3(i64, i32*) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i32 @IsIntInList(i32, i64) #1

declare dso_local i32 @AddIntDistinct(i32, i64) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local %struct.TYPE_9__* @ZeroMalloc(i32) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @Rand64(...) #1

declare dso_local i8* @Tick64(...) #1

declare dso_local i32 @Rand(i32, i32) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i32 @IsIP6(i32*) #1

declare dso_local i32 @NewQueue(...) #1

declare dso_local i8* @Rand32(...) #1

declare dso_local i32 @Debug(i8*, i32) #1

declare dso_local i32 @NewLock(...) #1

declare dso_local i32 @NewEvent(...) #1

declare dso_local i32 @NewThread(i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
