; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_net.c_NetUpdate.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_net.c_NetUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i32*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@ticdup = common dso_local global i32 0, align 4
@gametime = common dso_local global i32 0, align 4
@skiptics = common dso_local global i32 0, align 4
@consoleplayer = common dso_local global i32 0, align 4
@netbuffer = common dso_local global %struct.TYPE_3__* null, align 8
@gametic = common dso_local global i32 0, align 4
@maketic = common dso_local global i32 0, align 4
@BACKUPTICS = common dso_local global i32 0, align 4
@localcmds = common dso_local global i32* null, align 8
@singletics = common dso_local global i64 0, align 8
@doomcom = common dso_local global %struct.TYPE_4__* null, align 8
@nodeingame = common dso_local global i64* null, align 8
@resendto = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"NetUpdate: netbuffer->numtics > BACKUPTICS\00", align 1
@remoteresend = common dso_local global i64* null, align 8
@nettics = common dso_local global i64* null, align 8
@NCMD_RETRANSMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NetUpdate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 (...) @I_GetTime()
  %8 = load i32, i32* @ticdup, align 4
  %9 = sdiv i32 %7, %8
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @gametime, align 4
  %12 = sub nsw i32 %10, %11
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %1, align 4
  store i32 %13, i32* @gametime, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  br label %166

17:                                               ; preds = %0
  %18 = load i32, i32* @skiptics, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* @skiptics, align 4
  %23 = load i32, i32* %2, align 4
  %24 = sub nsw i32 %23, %22
  store i32 %24, i32* %2, align 4
  store i32 0, i32* @skiptics, align 4
  br label %29

25:                                               ; preds = %17
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @skiptics, align 4
  %28 = sub nsw i32 %27, %26
  store i32 %28, i32* @skiptics, align 4
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* @consoleplayer, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netbuffer, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @gametic, align 4
  %34 = load i32, i32* @ticdup, align 4
  %35 = sdiv i32 %33, %34
  store i32 %35, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %61, %29
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %2, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %36
  %41 = call i32 (...) @I_StartTic()
  %42 = call i32 (...) @D_ProcessEvents()
  %43 = load i32, i32* @maketic, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %43, %44
  %46 = load i32, i32* @BACKUPTICS, align 4
  %47 = sdiv i32 %46, 2
  %48 = sub nsw i32 %47, 1
  %49 = icmp sge i32 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %64

51:                                               ; preds = %40
  %52 = load i32*, i32** @localcmds, align 8
  %53 = load i32, i32* @maketic, align 4
  %54 = load i32, i32* @BACKUPTICS, align 4
  %55 = srem i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = call i32 @G_BuildTiccmd(i32* %57)
  %59 = load i32, i32* @maketic, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @maketic, align 4
  br label %61

61:                                               ; preds = %51
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %36

64:                                               ; preds = %50, %36
  %65 = load i64, i64* @singletics, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %168

68:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %162, %68
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @doomcom, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %165

75:                                               ; preds = %69
  %76 = load i64*, i64** @nodeingame, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %161

82:                                               ; preds = %75
  %83 = load i32*, i32** @resendto, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %5, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netbuffer, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @maketic, align 4
  %91 = load i32, i32* %5, align 4
  %92 = sub nsw i32 %90, %91
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netbuffer, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netbuffer, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @BACKUPTICS, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %82
  %101 = call i32 @I_Error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %82
  %103 = load i32, i32* @maketic, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @doomcom, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %103, %106
  %108 = load i32*, i32** @resendto, align 8
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %107, i32* %111, align 4
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %134, %102
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netbuffer, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %137

118:                                              ; preds = %112
  %119 = load i32*, i32** @localcmds, align 8
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %120, %121
  %123 = load i32, i32* @BACKUPTICS, align 4
  %124 = srem i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %119, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netbuffer, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %127, i32* %133, align 4
  br label %134

134:                                              ; preds = %118
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %4, align 4
  br label %112

137:                                              ; preds = %112
  %138 = load i64*, i64** @remoteresend, align 8
  %139 = load i32, i32* %3, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %137
  %145 = load i64*, i64** @nettics, align 8
  %146 = load i32, i32* %3, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netbuffer, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 2
  store i64 %149, i64* %151, align 8
  %152 = load i32, i32* %3, align 4
  %153 = load i32, i32* @NCMD_RETRANSMIT, align 4
  %154 = call i32 @HSendPacket(i32 %152, i32 %153)
  br label %160

155:                                              ; preds = %137
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netbuffer, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 2
  store i64 0, i64* %157, align 8
  %158 = load i32, i32* %3, align 4
  %159 = call i32 @HSendPacket(i32 %158, i32 0)
  br label %160

160:                                              ; preds = %155, %144
  br label %161

161:                                              ; preds = %160, %75
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %3, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %3, align 4
  br label %69

165:                                              ; preds = %69
  br label %166

166:                                              ; preds = %165, %16
  %167 = call i32 (...) @GetPackets()
  br label %168

168:                                              ; preds = %166, %67
  ret void
}

declare dso_local i32 @I_GetTime(...) #1

declare dso_local i32 @I_StartTic(...) #1

declare dso_local i32 @D_ProcessEvents(...) #1

declare dso_local i32 @G_BuildTiccmd(i32*) #1

declare dso_local i32 @I_Error(i8*) #1

declare dso_local i32 @HSendPacket(i32, i32) #1

declare dso_local i32 @GetPackets(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
