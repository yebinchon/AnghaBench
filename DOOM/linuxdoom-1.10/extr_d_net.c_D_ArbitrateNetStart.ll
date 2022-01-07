; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_net.c_D_ArbitrateNetStart.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_net.c_D_ArbitrateNetStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64 }

@MAXNETNODES = common dso_local global i32 0, align 4
@autostart = common dso_local global i32 0, align 4
@doomcom = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"listening for network start info...\0A\00", align 1
@netbuffer = common dso_local global %struct.TYPE_3__* null, align 8
@NCMD_SETUP = common dso_local global i32 0, align 4
@VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Different DOOM versions cannot play a net game!\00", align 1
@startskill = common dso_local global i32 0, align 4
@deathmatch = common dso_local global i32 0, align 4
@nomonsters = common dso_local global i32 0, align 4
@respawnparm = common dso_local global i32 0, align 4
@startmap = common dso_local global i32 0, align 4
@startepisode = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"sending network start info...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @D_ArbitrateNetStart() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @MAXNETNODES, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %2, align 8
  %8 = alloca i32, i64 %6, align 16
  store i64 %6, i64* %3, align 8
  store i32 1, i32* @autostart, align 4
  %9 = mul nuw i64 4, %6
  %10 = trunc i64 %9 to i32
  %11 = call i32 @memset(i32* %8, i32 0, i32 %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @doomcom, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %70

16:                                               ; preds = %0
  %17 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %69, %23, %16
  br label %19

19:                                               ; preds = %18
  %20 = call i32 (...) @CheckAbort()
  %21 = call i64 (...) @HGetPacket()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %18

24:                                               ; preds = %19
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netbuffer, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @NCMD_SETUP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %69

31:                                               ; preds = %24
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netbuffer, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @VERSION, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 @I_Error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %31
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netbuffer, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 15
  store i32 %43, i32* @startskill, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netbuffer, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, 192
  %48 = ashr i32 %47, 6
  store i32 %48, i32* @deathmatch, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netbuffer, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, 32
  %53 = icmp sgt i32 %52, 0
  %54 = zext i1 %53 to i32
  store i32 %54, i32* @nomonsters, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netbuffer, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, 16
  %59 = icmp sgt i32 %58, 0
  %60 = zext i1 %59 to i32
  store i32 %60, i32* @respawnparm, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netbuffer, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 63
  store i32 %64, i32* @startmap, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netbuffer, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = ashr i32 %67, 6
  store i32 %68, i32* @startepisode, align 4
  store i32 1, i32* %4, align 4
  br label %181

69:                                               ; preds = %24
  br label %18

70:                                               ; preds = %0
  %71 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %173, %70
  %73 = call i32 (...) @CheckAbort()
  store i32 0, i32* %1, align 4
  br label %74

74:                                               ; preds = %124, %72
  %75 = load i32, i32* %1, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @doomcom, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %127

80:                                               ; preds = %74
  %81 = load i32, i32* @startskill, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netbuffer, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @deathmatch, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load i32, i32* @deathmatch, align 4
  %88 = shl i32 %87, 6
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netbuffer, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %86, %80
  %94 = load i32, i32* @nomonsters, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netbuffer, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, 32
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %96, %93
  %102 = load i32, i32* @respawnparm, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netbuffer, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, 16
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %104, %101
  %110 = load i32, i32* @startepisode, align 4
  %111 = mul nsw i32 %110, 64
  %112 = load i32, i32* @startmap, align 4
  %113 = add nsw i32 %111, %112
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netbuffer, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @VERSION, align 4
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netbuffer, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netbuffer, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 4
  store i64 0, i64* %120, align 8
  %121 = load i32, i32* %1, align 4
  %122 = load i32, i32* @NCMD_SETUP, align 4
  %123 = call i32 @HSendPacket(i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %109
  %125 = load i32, i32* %1, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %1, align 4
  br label %74

127:                                              ; preds = %74
  store i32 10, i32* %1, align 4
  br label %128

128:                                              ; preds = %151, %127
  %129 = load i32, i32* %1, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = call i64 (...) @HGetPacket()
  %133 = icmp ne i64 %132, 0
  br label %134

134:                                              ; preds = %131, %128
  %135 = phi i1 [ false, %128 ], [ %133, %131 ]
  br i1 %135, label %136, label %154

136:                                              ; preds = %134
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netbuffer, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, 127
  %141 = load i32, i32* @MAXNETNODES, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %136
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** @netbuffer, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 127
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %8, i64 %148
  store i32 1, i32* %149, align 4
  br label %150

150:                                              ; preds = %143, %136
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %1, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %1, align 4
  br label %128

154:                                              ; preds = %134
  store i32 1, i32* %1, align 4
  br label %155

155:                                              ; preds = %169, %154
  %156 = load i32, i32* %1, align 4
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** @doomcom, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp slt i32 %156, %159
  br i1 %160, label %161, label %172

161:                                              ; preds = %155
  %162 = load i32, i32* %1, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %8, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %161
  br label %172

168:                                              ; preds = %161
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %1, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %1, align 4
  br label %155

172:                                              ; preds = %167, %155
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %1, align 4
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** @doomcom, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp slt i32 %174, %177
  br i1 %178, label %72, label %179

179:                                              ; preds = %173
  br label %180

180:                                              ; preds = %179
  store i32 0, i32* %4, align 4
  br label %181

181:                                              ; preds = %180, %39
  %182 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %182)
  %183 = load i32, i32* %4, align 4
  switch i32 %183, label %185 [
    i32 0, label %184
    i32 1, label %184
  ]

184:                                              ; preds = %181, %181
  ret void

185:                                              ; preds = %181
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @CheckAbort(...) #2

declare dso_local i64 @HGetPacket(...) #2

declare dso_local i32 @I_Error(i8*) #2

declare dso_local i32 @HSendPacket(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
