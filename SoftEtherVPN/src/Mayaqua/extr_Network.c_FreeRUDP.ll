; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_FreeRUDP.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_FreeRUDP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i32, i32*, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32*, i32*, i64 }

@INFINITE = common dso_local global i32 0, align 4
@rand_port_numbers = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FreeRUDP(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = icmp eq %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %200

11:                                               ; preds = %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @Set(i32 %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @SetSockEvent(i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 17
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %11
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 16
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 16
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* @INFINITE, align 4
  %41 = call i32 @WaitThread(i32* %39, i32 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 16
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @ReleaseThread(i32* %44)
  br label %46

46:                                               ; preds = %36, %31
  br label %47

47:                                               ; preds = %46, %26, %11
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 15
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @INFINITE, align 4
  %52 = call i32 @WaitThread(i32* %50, i32 %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 15
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @ReleaseThread(i32* %55)
  store i64 0, i64* %3, align 8
  br label %57

57:                                               ; preds = %73, %47
  %58 = load i64, i64* %3, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 14
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @LIST_NUM(i32 %61)
  %63 = icmp slt i64 %58, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %57
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 14
  %67 = load i32, i32* %66, align 8
  %68 = load i64, i64* %3, align 8
  %69 = call i8* @LIST_DATA(i32 %67, i64 %68)
  %70 = bitcast i8* %69 to i32*
  store i32* %70, i32** %4, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @RUDPFreeSession(i32* %71)
  br label %73

73:                                               ; preds = %64
  %74 = load i64, i64* %3, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %3, align 8
  br label %57

76:                                               ; preds = %57
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 14
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @ReleaseList(i32 %79)
  store i64 0, i64* %3, align 8
  br label %81

81:                                               ; preds = %97, %76
  %82 = load i64, i64* %3, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 11
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @LIST_NUM(i32 %85)
  %87 = icmp slt i64 %82, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %81
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 11
  %91 = load i32, i32* %90, align 4
  %92 = load i64, i64* %3, align 8
  %93 = call i8* @LIST_DATA(i32 %91, i64 %92)
  %94 = bitcast i8* %93 to i32*
  store i32* %94, i32** %5, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @FreeUdpPacket(i32* %95)
  br label %97

97:                                               ; preds = %88
  %98 = load i64, i64* %3, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %3, align 8
  br label %81

100:                                              ; preds = %81
  br label %101

101:                                              ; preds = %100, %109
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 12
  %104 = load i32, i32* %103, align 8
  %105 = call i32* @GetNext(i32 %104)
  store i32* %105, i32** %6, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %114

109:                                              ; preds = %101
  %110 = load i32*, i32** %6, align 8
  %111 = call i32 @Disconnect(i32* %110)
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @ReleaseSock(i32* %112)
  br label %101

114:                                              ; preds = %108
  store i64 0, i64* %3, align 8
  br label %115

115:                                              ; preds = %131, %114
  %116 = load i64, i64* %3, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 13
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @LIST_NUM(i32 %119)
  %121 = icmp slt i64 %116, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %115
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 13
  %125 = load i32, i32* %124, align 4
  %126 = load i64, i64* %3, align 8
  %127 = call i8* @LIST_DATA(i32 %125, i64 %126)
  %128 = bitcast i8* %127 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %128, %struct.TYPE_5__** %7, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %130 = call i32 @Free(%struct.TYPE_5__* %129)
  br label %131

131:                                              ; preds = %122
  %132 = load i64, i64* %3, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %3, align 8
  br label %115

134:                                              ; preds = %115
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 13
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @ReleaseList(i32 %137)
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 12
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @ReleaseQueue(i32 %141)
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 11
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ReleaseList(i32 %145)
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 10
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @FreeInterruptManager(i32 %149)
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 9
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @Disconnect(i32* %153)
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 9
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @ReleaseSock(i32* %157)
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @ReleaseSockEvent(i32 %161)
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @ReleaseEvent(i32 %165)
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @ReleaseEvent(i32 %169)
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @ReleaseEvent(i32 %173)
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 4
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @Disconnect(i32* %177)
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 4
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @ReleaseSock(i32* %181)
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @DeleteLock(i32 %185)
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %134
  %192 = load i64*, i64** @rand_port_numbers, align 8
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds i64, i64* %192, i64 %195
  store i64 0, i64* %196, align 8
  br label %197

197:                                              ; preds = %191, %134
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %199 = call i32 @Free(%struct.TYPE_5__* %198)
  br label %200

200:                                              ; preds = %197, %10
  ret void
}

declare dso_local i32 @Set(i32) #1

declare dso_local i32 @SetSockEvent(i32) #1

declare dso_local i32 @WaitThread(i32*, i32) #1

declare dso_local i32 @ReleaseThread(i32*) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i8* @LIST_DATA(i32, i64) #1

declare dso_local i32 @RUDPFreeSession(i32*) #1

declare dso_local i32 @ReleaseList(i32) #1

declare dso_local i32 @FreeUdpPacket(i32*) #1

declare dso_local i32* @GetNext(i32) #1

declare dso_local i32 @Disconnect(i32*) #1

declare dso_local i32 @ReleaseSock(i32*) #1

declare dso_local i32 @Free(%struct.TYPE_5__*) #1

declare dso_local i32 @ReleaseQueue(i32) #1

declare dso_local i32 @FreeInterruptManager(i32) #1

declare dso_local i32 @ReleaseSockEvent(i32) #1

declare dso_local i32 @ReleaseEvent(i32) #1

declare dso_local i32 @DeleteLock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
