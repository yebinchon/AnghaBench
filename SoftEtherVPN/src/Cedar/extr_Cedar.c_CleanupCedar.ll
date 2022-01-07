; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Cedar.c_CleanupCedar.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Cedar.c_CleanupCedar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i64, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CleanupCedar(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = icmp eq %struct.TYPE_9__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %232

9:                                                ; preds = %1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 36
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @WuFreeWebUI(i32 %12)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = call i32 @FreeCedarLayer3(%struct.TYPE_9__* %14)
  store i64 0, i64* %3, align 8
  br label %16

16:                                               ; preds = %32, %9
  %17 = load i64, i64* %3, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 35
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @LIST_NUM(i32 %20)
  %22 = icmp slt i64 %17, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %16
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 35
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %3, align 8
  %28 = call i8* @LIST_DATA(i32 %26, i64 %27)
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %4, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @FreeX(i32* %30)
  br label %32

32:                                               ; preds = %23
  %33 = load i64, i64* %3, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %3, align 8
  br label %16

35:                                               ; preds = %16
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 35
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ReleaseList(i32 %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 34
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ReleaseList(i32 %42)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 33
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ReleaseList(i32 %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 32
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ReleaseList(i32 %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 31
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ReleaseList(i32 %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 30
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @DeleteLock(i32 %58)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 29
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @DeleteCounter(i32 %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 28
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @DeleteCounter(i32 %66)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 27
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %35
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 27
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @FreeLog(i32* %75)
  br label %77

77:                                               ; preds = %72, %35
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 26
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 26
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @FreeX(i32* %85)
  br label %87

87:                                               ; preds = %82, %77
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 25
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 25
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @FreeK(i64 %95)
  br label %97

97:                                               ; preds = %92, %87
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 24
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = icmp ne %struct.TYPE_9__* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 24
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = call i32 @Free(%struct.TYPE_9__* %105)
  br label %107

107:                                              ; preds = %102, %97
  store i64 0, i64* %3, align 8
  br label %108

108:                                              ; preds = %132, %107
  %109 = load i64, i64* %3, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 21
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @LIST_NUM(i32 %112)
  %114 = icmp slt i64 %109, %113
  br i1 %114, label %115, label %135

115:                                              ; preds = %108
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 21
  %118 = load i32, i32* %117, align 8
  %119 = load i64, i64* %3, align 8
  %120 = call i8* @LIST_DATA(i32 %118, i64 %119)
  %121 = bitcast i8* %120 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %121, %struct.TYPE_9__** %5, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 23
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = call i32 @Free(%struct.TYPE_9__* %124)
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 22
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = call i32 @Free(%struct.TYPE_9__* %128)
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %131 = call i32 @Free(%struct.TYPE_9__* %130)
  br label %132

132:                                              ; preds = %115
  %133 = load i64, i64* %3, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* %3, align 8
  br label %108

135:                                              ; preds = %108
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 21
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @ReleaseList(i32 %138)
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 20
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = call i32 @Free(%struct.TYPE_9__* %142)
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 19
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %145, align 8
  %147 = call i32 @Free(%struct.TYPE_9__* %146)
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 18
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = call i32 @Free(%struct.TYPE_9__* %150)
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 17
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = call i32 @Free(%struct.TYPE_9__* %154)
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 16
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = call i32 @Free(%struct.TYPE_9__* %158)
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 15
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = call i32 @Free(%struct.TYPE_9__* %162)
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 14
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @FreeTraffic(i32 %166)
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 13
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @DeleteLock(i32 %170)
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %173 = call i32 @FreeNetSvcList(%struct.TYPE_9__* %172)
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 12
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = call i32 @Free(%struct.TYPE_9__* %176)
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 11
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %179, align 8
  %181 = call i32 @Free(%struct.TYPE_9__* %180)
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %183 = call i32 @FreeLocalBridgeList(%struct.TYPE_9__* %182)
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 10
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @DeleteCounter(i32 %186)
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 9
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @DeleteCounter(i32 %190)
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %193 = call i32 @FreeNoSslList(%struct.TYPE_9__* %192)
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 8
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @DeleteLock(i32 %196)
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 7
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @DeleteCounter(i32 %200)
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @ReleaseIntList(i32 %204)
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @DeleteLock(i32 %208)
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @DeleteLock(i32 %212)
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @DeleteLock(i32 %216)
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @DeleteLock(i32 %220)
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @DeleteLock(i32 %224)
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @DeleteCounter(i32 %228)
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %231 = call i32 @Free(%struct.TYPE_9__* %230)
  br label %232

232:                                              ; preds = %135, %8
  ret void
}

declare dso_local i32 @WuFreeWebUI(i32) #1

declare dso_local i32 @FreeCedarLayer3(%struct.TYPE_9__*) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i8* @LIST_DATA(i32, i64) #1

declare dso_local i32 @FreeX(i32*) #1

declare dso_local i32 @ReleaseList(i32) #1

declare dso_local i32 @DeleteLock(i32) #1

declare dso_local i32 @DeleteCounter(i32) #1

declare dso_local i32 @FreeLog(i32*) #1

declare dso_local i32 @FreeK(i64) #1

declare dso_local i32 @Free(%struct.TYPE_9__*) #1

declare dso_local i32 @FreeTraffic(i32) #1

declare dso_local i32 @FreeNetSvcList(%struct.TYPE_9__*) #1

declare dso_local i32 @FreeLocalBridgeList(%struct.TYPE_9__*) #1

declare dso_local i32 @FreeNoSslList(%struct.TYPE_9__*) #1

declare dso_local i32 @ReleaseIntList(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
