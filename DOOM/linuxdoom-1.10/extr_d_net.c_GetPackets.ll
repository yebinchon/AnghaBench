; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_net.c_GetPackets.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_net.c_GetPackets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32* }

@netbuffer = common dso_local global %struct.TYPE_5__* null, align 8
@NCMD_SETUP = common dso_local global i32 0, align 4
@PL_DRONE = common dso_local global i32 0, align 4
@doomcom = common dso_local global %struct.TYPE_6__* null, align 8
@NCMD_EXIT = common dso_local global i32 0, align 4
@nodeingame = common dso_local global i32* null, align 8
@playeringame = common dso_local global i32* null, align 8
@exitmsg = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Player 1 left the game\00", align 1
@players = common dso_local global %struct.TYPE_4__* null, align 8
@consoleplayer = common dso_local global i64 0, align 8
@demorecording = common dso_local global i64 0, align 8
@NCMD_KILL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Killed by network driver\00", align 1
@nodeforplayer = common dso_local global i32* null, align 8
@resendcount = common dso_local global i64* null, align 8
@NCMD_RETRANSMIT = common dso_local global i32 0, align 4
@resendto = common dso_local global i32* null, align 8
@debugfile = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"retransmit from %i\0A\00", align 1
@RESENDCOUNT = common dso_local global i64 0, align 8
@nettics = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"out of order packet (%i + %i)\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"missed tics from %i (%i - %i)\0A\00", align 1
@remoteresend = common dso_local global i32* null, align 8
@netcmds = common dso_local global i32** null, align 8
@BACKUPTICS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetPackets() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  br label %8

8:                                                ; preds = %244, %187, %165, %146, %77, %51, %18, %0
  %9 = call i64 (...) @HGetPacket()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %245

11:                                               ; preds = %8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @netbuffer, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @NCMD_SETUP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %8

19:                                               ; preds = %11
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @netbuffer, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PL_DRONE, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  store i32 %25, i32* %1, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @doomcom, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %2, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @netbuffer, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ExpandTics(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @netbuffer, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %33, %36
  store i32 %37, i32* %5, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @netbuffer, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @NCMD_EXIT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %78

44:                                               ; preds = %19
  %45 = load i32*, i32** @nodeingame, align 8
  %46 = load i32, i32* %2, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  br label %8

52:                                               ; preds = %44
  %53 = load i32*, i32** @nodeingame, align 8
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 0, i32* %56, align 4
  %57 = load i32*, i32** @playeringame, align 8
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 0, i32* %60, align 4
  %61 = load i32*, i32** @exitmsg, align 8
  %62 = call i32 @strcpy(i32* %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* %1, align 4
  %64 = load i32*, i32** @exitmsg, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 7
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load i32*, i32** @exitmsg, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @players, align 8
  %70 = load i64, i64* @consoleplayer, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32* %68, i32** %72, align 8
  %73 = load i64, i64* @demorecording, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %52
  %76 = call i32 (...) @G_CheckDemoStatus()
  br label %77

77:                                               ; preds = %75, %52
  br label %8

78:                                               ; preds = %19
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** @netbuffer, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @NCMD_KILL, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = call i32 @I_Error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %78
  %88 = load i32, i32* %2, align 4
  %89 = load i32*, i32** @nodeforplayer, align 8
  %90 = load i32, i32* %1, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %88, i32* %92, align 4
  %93 = load i64*, i64** @resendcount, align 8
  %94 = load i32, i32* %2, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = icmp sle i64 %97, 0
  br i1 %98, label %99, label %131

99:                                               ; preds = %87
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** @netbuffer, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @NCMD_RETRANSMIT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %131

106:                                              ; preds = %99
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** @netbuffer, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @ExpandTics(i32 %109)
  %111 = load i32*, i32** @resendto, align 8
  %112 = load i32, i32* %2, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %110, i32* %114, align 4
  %115 = load i64, i64* @debugfile, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %106
  %118 = load i64, i64* @debugfile, align 8
  %119 = load i32*, i32** @resendto, align 8
  %120 = load i32, i32* %2, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %118, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %117, %106
  %126 = load i64, i64* @RESENDCOUNT, align 8
  %127 = load i64*, i64** @resendcount, align 8
  %128 = load i32, i32* %2, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  store i64 %126, i64* %130, align 8
  br label %138

131:                                              ; preds = %99, %87
  %132 = load i64*, i64** @resendcount, align 8
  %133 = load i32, i32* %2, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, -1
  store i64 %137, i64* %135, align 8
  br label %138

138:                                              ; preds = %131, %125
  %139 = load i32, i32* %5, align 4
  %140 = load i32*, i32** @nettics, align 8
  %141 = load i32, i32* %2, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %139, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %138
  br label %8

147:                                              ; preds = %138
  %148 = load i32, i32* %5, align 4
  %149 = load i32*, i32** @nettics, align 8
  %150 = load i32, i32* %2, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = icmp slt i32 %148, %153
  br i1 %154, label %155, label %166

155:                                              ; preds = %147
  %156 = load i64, i64* @debugfile, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %155
  %159 = load i64, i64* @debugfile, align 8
  %160 = load i32, i32* %6, align 4
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** @netbuffer, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %159, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %160, i32 %163)
  br label %165

165:                                              ; preds = %158, %155
  br label %8

166:                                              ; preds = %147
  %167 = load i32, i32* %6, align 4
  %168 = load i32*, i32** @nettics, align 8
  %169 = load i32, i32* %2, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = icmp sgt i32 %167, %172
  br i1 %173, label %174, label %192

174:                                              ; preds = %166
  %175 = load i64, i64* @debugfile, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %174
  %178 = load i64, i64* @debugfile, align 8
  %179 = load i32, i32* %2, align 4
  %180 = load i32, i32* %6, align 4
  %181 = load i32*, i32** @nettics, align 8
  %182 = load i32, i32* %2, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %178, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %179, i32 %180, i32 %185)
  br label %187

187:                                              ; preds = %177, %174
  %188 = load i32*, i32** @remoteresend, align 8
  %189 = load i32, i32* %2, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  store i32 1, i32* %191, align 4
  br label %8

192:                                              ; preds = %166
  %193 = load i32*, i32** @remoteresend, align 8
  %194 = load i32, i32* %2, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  store i32 0, i32* %196, align 4
  %197 = load i32*, i32** @nettics, align 8
  %198 = load i32, i32* %2, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %6, align 4
  %203 = sub nsw i32 %201, %202
  store i32 %203, i32* %7, align 4
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** @netbuffer, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 3
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  store i32* %209, i32** %3, align 8
  br label %210

210:                                              ; preds = %218, %192
  %211 = load i32*, i32** @nettics, align 8
  %212 = load i32, i32* %2, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %5, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %244

218:                                              ; preds = %210
  %219 = load i32**, i32*** @netcmds, align 8
  %220 = load i32, i32* %1, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32*, i32** %219, i64 %221
  %223 = load i32*, i32** %222, align 8
  %224 = load i32*, i32** @nettics, align 8
  %225 = load i32, i32* %2, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @BACKUPTICS, align 4
  %230 = srem i32 %228, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %223, i64 %231
  store i32* %232, i32** %4, align 8
  %233 = load i32*, i32** @nettics, align 8
  %234 = load i32, i32* %2, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %236, align 4
  %239 = load i32*, i32** %3, align 8
  %240 = load i32, i32* %239, align 4
  %241 = load i32*, i32** %4, align 8
  store i32 %240, i32* %241, align 4
  %242 = load i32*, i32** %3, align 8
  %243 = getelementptr inbounds i32, i32* %242, i32 1
  store i32* %243, i32** %3, align 8
  br label %210

244:                                              ; preds = %210
  br label %8

245:                                              ; preds = %8
  ret void
}

declare dso_local i64 @HGetPacket(...) #1

declare dso_local i32 @ExpandTics(i32) #1

declare dso_local i32 @strcpy(i32*, i8*) #1

declare dso_local i32 @G_CheckDemoStatus(...) #1

declare dso_local i32 @I_Error(i8*) #1

declare dso_local i32 @fprintf(i64, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
