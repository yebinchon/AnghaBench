; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_input.c_CL_WritePacket.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_input.c_CL_WritePacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, i32, i32, i32, i32, %struct.TYPE_25__, i32, i32*, i64, i32*, i64 }
%struct.TYPE_25__ = type { i32, i64 }
%struct.TYPE_29__ = type { i64, i32 }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_26__*, %struct.TYPE_27__*, %struct.TYPE_24__ }
%struct.TYPE_26__ = type { i32, i32, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_28__ = type { i32 }

@MAX_MSGLEN = common dso_local global i32 0, align 4
@clc = common dso_local global %struct.TYPE_30__ zeroinitializer, align 8
@cls = common dso_local global %struct.TYPE_29__ zeroinitializer, align 8
@CA_CINEMATIC = common dso_local global i64 0, align 8
@cl = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@clc_clientCommand = common dso_local global i32 0, align 4
@MAX_RELIABLE_COMMANDS = common dso_local global i32 0, align 4
@cl_packetdup = common dso_local global %struct.TYPE_32__* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"cl_packetdup\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@PACKET_MASK = common dso_local global i32 0, align 4
@MAX_PACKET_USERCMDS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"MAX_PACKET_USERCMDS\0A\00", align 1
@cl_showSend = common dso_local global %struct.TYPE_31__* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"(%i)\00", align 1
@cl_nodelta = common dso_local global %struct.TYPE_33__* null, align 8
@clc_moveNoDelta = common dso_local global i32 0, align 4
@clc_move = common dso_local global i32 0, align 4
@CMD_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"%i \00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"WARNING: #462 unsent fragments (not supposed to happen!)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_WritePacket() #0 {
  %1 = alloca %struct.TYPE_28__, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_27__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = load i32, i32* @MAX_MSGLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %2, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %3, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @clc, i32 0, i32 10), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %0
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @cls, i32 0, i32 0), align 8
  %22 = load i64, i64* @CA_CINEMATIC, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %0
  store i32 1, i32* %13, align 4
  br label %216

25:                                               ; preds = %20
  %26 = call i32 @Com_Memset(%struct.TYPE_27__* %8, i32 0, i32 4)
  store %struct.TYPE_27__* %8, %struct.TYPE_27__** %7, align 8
  %27 = mul nuw i64 4, %15
  %28 = trunc i64 %27 to i32
  %29 = call i32 @MSG_Init(%struct.TYPE_28__* %1, i32* %17, i32 %28)
  %30 = call i32 @MSG_Bitstream(%struct.TYPE_28__* %1)
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @cl, i32 0, i32 0), align 8
  %32 = call i32 @MSG_WriteLong(%struct.TYPE_28__* %1, i32 %31)
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @clc, i32 0, i32 0), align 8
  %34 = call i32 @MSG_WriteLong(%struct.TYPE_28__* %1, i32 %33)
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @clc, i32 0, i32 1), align 4
  %36 = call i32 @MSG_WriteLong(%struct.TYPE_28__* %1, i32 %35)
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @clc, i32 0, i32 2), align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %57, %25
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @clc, i32 0, i32 3), align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = load i32, i32* @clc_clientCommand, align 4
  %45 = call i32 @MSG_WriteByte(%struct.TYPE_28__* %1, i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @MSG_WriteLong(%struct.TYPE_28__* %1, i32 %46)
  %48 = load i32*, i32** getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @clc, i32 0, i32 9), align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @MAX_RELIABLE_COMMANDS, align 4
  %51 = sub nsw i32 %50, 1
  %52 = and i32 %49, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %48, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @MSG_WriteString(%struct.TYPE_28__* %1, i32 %55)
  br label %57

57:                                               ; preds = %43
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %39

60:                                               ; preds = %39
  %61 = load %struct.TYPE_32__*, %struct.TYPE_32__** @cl_packetdup, align 8
  %62 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 @Cvar_Set(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %75

67:                                               ; preds = %60
  %68 = load %struct.TYPE_32__*, %struct.TYPE_32__** @cl_packetdup, align 8
  %69 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %70, 5
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 @Cvar_Set(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %67
  br label %75

75:                                               ; preds = %74, %65
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @clc, i32 0, i32 5, i32 0), align 8
  %77 = sub nsw i32 %76, 1
  %78 = load %struct.TYPE_32__*, %struct.TYPE_32__** @cl_packetdup, align 8
  %79 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %77, %80
  %82 = load i32, i32* @PACKET_MASK, align 4
  %83 = and i32 %81, %82
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @cl, i32 0, i32 1), align 4
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @cl, i32 0, i32 2), align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %84, %90
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @MAX_PACKET_USERCMDS, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %75
  %96 = load i32, i32* @MAX_PACKET_USERCMDS, align 4
  store i32 %96, i32* %11, align 4
  %97 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %75
  %99 = load i32, i32* %11, align 4
  %100 = icmp sge i32 %99, 1
  br i1 %100, label %101, label %174

101:                                              ; preds = %98
  %102 = load %struct.TYPE_31__*, %struct.TYPE_31__** @cl_showSend, align 8
  %103 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32, i32* %11, align 4
  %108 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %106, %101
  %110 = load %struct.TYPE_33__*, %struct.TYPE_33__** @cl_nodelta, align 8
  %111 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @cl, i32 0, i32 4, i32 1), align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @clc, i32 0, i32 8), align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @clc, i32 0, i32 0), align 8
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @cl, i32 0, i32 4, i32 0), align 8
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %120, %117, %114, %109
  %125 = load i32, i32* @clc_moveNoDelta, align 4
  %126 = call i32 @MSG_WriteByte(%struct.TYPE_28__* %1, i32 %125)
  br label %130

127:                                              ; preds = %120
  %128 = load i32, i32* @clc_move, align 4
  %129 = call i32 @MSG_WriteByte(%struct.TYPE_28__* %1, i32 %128)
  br label %130

130:                                              ; preds = %127, %124
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @MSG_WriteByte(%struct.TYPE_28__* %1, i32 %131)
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @clc, i32 0, i32 4), align 8
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @clc, i32 0, i32 0), align 8
  %135 = load i32, i32* %12, align 4
  %136 = xor i32 %135, %134
  store i32 %136, i32* %12, align 4
  %137 = load i32*, i32** getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @clc, i32 0, i32 7), align 8
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @clc, i32 0, i32 1), align 4
  %139 = load i32, i32* @MAX_RELIABLE_COMMANDS, align 4
  %140 = sub nsw i32 %139, 1
  %141 = and i32 %138, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %137, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @Com_HashKey(i32 %144, i32 32)
  %146 = load i32, i32* %12, align 4
  %147 = xor i32 %146, %145
  store i32 %147, i32* %12, align 4
  store i32 0, i32* %4, align 4
  br label %148

148:                                              ; preds = %170, %130
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* %11, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %173

152:                                              ; preds = %148
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @cl, i32 0, i32 1), align 4
  %154 = load i32, i32* %11, align 4
  %155 = sub nsw i32 %153, %154
  %156 = load i32, i32* %4, align 4
  %157 = add nsw i32 %155, %156
  %158 = add nsw i32 %157, 1
  %159 = load i32, i32* @CMD_MASK, align 4
  %160 = and i32 %158, %159
  store i32 %160, i32* %5, align 4
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @cl, i32 0, i32 3), align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %161, i64 %163
  store %struct.TYPE_27__* %164, %struct.TYPE_27__** %6, align 8
  %165 = load i32, i32* %12, align 4
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %168 = call i32 @MSG_WriteDeltaUsercmdKey(%struct.TYPE_28__* %1, i32 %165, %struct.TYPE_27__* %166, %struct.TYPE_27__* %167)
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  store %struct.TYPE_27__* %169, %struct.TYPE_27__** %7, align 8
  br label %170

170:                                              ; preds = %152
  %171 = load i32, i32* %4, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %4, align 4
  br label %148

173:                                              ; preds = %148
  br label %174

174:                                              ; preds = %173, %98
  %175 = load i32, i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @clc, i32 0, i32 5, i32 0), align 8
  %176 = load i32, i32* @PACKET_MASK, align 4
  %177 = and i32 %175, %176
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @cls, i32 0, i32 1), align 8
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @cl, i32 0, i32 2), align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 2
  store i32 %178, i32* %183, align 4
  %184 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_26__*, %struct.TYPE_26__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @cl, i32 0, i32 2), align 8
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %190, i32 0, i32 1
  store i32 %186, i32* %191, align 4
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @cl, i32 0, i32 1), align 4
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @cl, i32 0, i32 2), align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %196, i32 0, i32 0
  store i32 %192, i32* %197, align 4
  %198 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @cls, i32 0, i32 1), align 8
  store i32 %198, i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @clc, i32 0, i32 6), align 8
  %199 = load %struct.TYPE_31__*, %struct.TYPE_31__** @cl_showSend, align 8
  %200 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %174
  %204 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %1, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %205)
  br label %207

207:                                              ; preds = %203, %174
  %208 = call i32 @CL_Netchan_Transmit(%struct.TYPE_25__* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @clc, i32 0, i32 5), %struct.TYPE_28__* %1)
  br label %209

209:                                              ; preds = %212, %207
  %210 = load i64, i64* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @clc, i32 0, i32 5, i32 1), align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %209
  %213 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0))
  %214 = call i32 @CL_Netchan_TransmitNextFragment(%struct.TYPE_25__* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @clc, i32 0, i32 5))
  br label %209

215:                                              ; preds = %209
  store i32 0, i32* %13, align 4
  br label %216

216:                                              ; preds = %215, %24
  %217 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %217)
  %218 = load i32, i32* %13, align 4
  switch i32 %218, label %220 [
    i32 0, label %219
    i32 1, label %219
  ]

219:                                              ; preds = %216, %216
  ret void

220:                                              ; preds = %216
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_Memset(%struct.TYPE_27__*, i32, i32) #2

declare dso_local i32 @MSG_Init(%struct.TYPE_28__*, i32*, i32) #2

declare dso_local i32 @MSG_Bitstream(%struct.TYPE_28__*) #2

declare dso_local i32 @MSG_WriteLong(%struct.TYPE_28__*, i32) #2

declare dso_local i32 @MSG_WriteByte(%struct.TYPE_28__*, i32) #2

declare dso_local i32 @MSG_WriteString(%struct.TYPE_28__*, i32) #2

declare dso_local i32 @Cvar_Set(i8*, i8*) #2

declare dso_local i32 @Com_Printf(i8*, ...) #2

declare dso_local i32 @Com_HashKey(i32, i32) #2

declare dso_local i32 @MSG_WriteDeltaUsercmdKey(%struct.TYPE_28__*, i32, %struct.TYPE_27__*, %struct.TYPE_27__*) #2

declare dso_local i32 @CL_Netchan_Transmit(%struct.TYPE_25__*, %struct.TYPE_28__*) #2

declare dso_local i32 @Com_DPrintf(i8*) #2

declare dso_local i32 @CL_Netchan_TransmitNextFragment(%struct.TYPE_25__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
