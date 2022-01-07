; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_servers2.c_ArenaServers_DoRefresh.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_servers2.c_ArenaServers_DoRefresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i8**, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32 }

@MAX_ADDRESSLENGTH = common dso_local global i32 0, align 4
@MAX_INFO_STRING = common dso_local global i32 0, align 4
@uis = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@g_arenaservers = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@g_servertype = common dso_local global i64 0, align 8
@AS_FAVORITES = common dso_local global i64 0, align 8
@AS_LOCAL = common dso_local global i64 0, align 8
@MAX_PINGREQUESTS = common dso_local global i32 0, align 4
@EXEC_NOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ping %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ArenaServers_DoRefresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ArenaServers_DoRefresh() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = load i32, i32* @MAX_ADDRESSLENGTH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @MAX_INFO_STRING, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 0), align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 0), align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %0
  %20 = load i64, i64* @g_servertype, align 8
  %21 = load i64, i64* @AS_FAVORITES, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load i64, i64* @g_servertype, align 8
  %25 = load i64, i64* @AS_LOCAL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i64, i64* @g_servertype, align 8
  %29 = call i64 @trap_LAN_GetServerCount(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 1, i32* %8, align 4
  br label %225

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %23
  %34 = load i64, i64* @g_servertype, align 8
  %35 = call i64 @trap_LAN_GetServerCount(i64 %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %8, align 4
  br label %225

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %19
  br label %40

40:                                               ; preds = %39, %0
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 0), align 8
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 1), align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 1, i32* %8, align 4
  br label %225

45:                                               ; preds = %40
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 0), align 8
  %47 = add nsw i64 %46, 10
  store i64 %47, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 1), align 8
  %48 = call i32 (...) @ArenaServers_MaxPing()
  store i32 %48, i32* %4, align 4
  store i32 0, i32* %1, align 4
  br label %49

49:                                               ; preds = %127, %45
  %50 = load i32, i32* %1, align 4
  %51 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %130

53:                                               ; preds = %49
  %54 = load i32, i32* %1, align 4
  %55 = load i32, i32* @MAX_ADDRESSLENGTH, align 4
  %56 = call i32 @trap_LAN_GetPing(i32 %54, i8* %12, i32 %55, i32* %3)
  %57 = getelementptr inbounds i8, i8* %12, i64 0
  %58 = load i8, i8* %57, align 16
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %53
  br label %127

61:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %77, %61
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 6), align 8
  %68 = load i32, i32* %2, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @Q_stricmp(i8* %12, i8* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %66
  br label %80

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %2, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %2, align 4
  br label %62

80:                                               ; preds = %75, %62
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %124

84:                                               ; preds = %80
  %85 = load i32, i32* %3, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %103, label %87

87:                                               ; preds = %84
  %88 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 0), align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 6), align 8
  %90 = load i32, i32* %2, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = sub nsw i64 %88, %95
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %3, align 4
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %87
  br label %127

102:                                              ; preds = %87
  br label %103

103:                                              ; preds = %102, %84
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 0, i8* %108, align 16
  %109 = load i32, i32* %4, align 4
  store i32 %109, i32* %3, align 4
  br label %114

110:                                              ; preds = %103
  %111 = load i32, i32* %1, align 4
  %112 = load i32, i32* @MAX_INFO_STRING, align 4
  %113 = call i32 @trap_LAN_GetPingInfo(i32 %111, i8* %15, i32 %112)
  br label %114

114:                                              ; preds = %110, %107
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @ArenaServers_Insert(i8* %12, i8* %15, i32 %115)
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 6), align 8
  %118 = load i32, i32* %2, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 0
  store i8 0, i8* %123, align 1
  br label %124

124:                                              ; preds = %114, %80
  %125 = load i32, i32* %1, align 4
  %126 = call i32 @trap_LAN_ClearPing(i32 %125)
  br label %127

127:                                              ; preds = %124, %101, %60
  %128 = load i32, i32* %1, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %1, align 4
  br label %49

130:                                              ; preds = %49
  %131 = load i64, i64* @g_servertype, align 8
  %132 = load i64, i64* @AS_FAVORITES, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 3), align 8
  store i64 %135, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 2), align 8
  br label %139

136:                                              ; preds = %130
  %137 = load i64, i64* @g_servertype, align 8
  %138 = call i64 @trap_LAN_GetServerCount(i64 %137)
  store i64 %138, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 2), align 8
  br label %139

139:                                              ; preds = %136, %134
  store i32 0, i32* %1, align 4
  br label %140

140:                                              ; preds = %215, %139
  %141 = load i32, i32* %1, align 4
  %142 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 4), align 8
  %146 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 2), align 8
  %147 = icmp ult i64 %145, %146
  br label %148

148:                                              ; preds = %144, %140
  %149 = phi i1 [ false, %140 ], [ %147, %144 ]
  br i1 %149, label %150, label %218

150:                                              ; preds = %148
  %151 = call i32 (...) @trap_LAN_GetPingQueueCount()
  %152 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %153 = icmp sge i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  br label %218

155:                                              ; preds = %150
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %172, %155
  %157 = load i32, i32* %2, align 4
  %158 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %175

160:                                              ; preds = %156
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 6), align 8
  %162 = load i32, i32* %2, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 0
  %168 = load i8, i8* %167, align 1
  %169 = icmp ne i8 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %160
  br label %175

171:                                              ; preds = %160
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %2, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %2, align 4
  br label %156

175:                                              ; preds = %170, %156
  %176 = load i32, i32* %2, align 4
  %177 = load i32, i32* @MAX_PINGREQUESTS, align 4
  %178 = icmp sge i32 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %175
  br label %218

180:                                              ; preds = %175
  %181 = load i64, i64* @g_servertype, align 8
  %182 = load i64, i64* @AS_FAVORITES, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %180
  %185 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 5), align 8
  %186 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 4), align 8
  %187 = getelementptr inbounds i8*, i8** %185, i64 %186
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @strcpy(i8* %12, i8* %188)
  br label %195

190:                                              ; preds = %180
  %191 = load i64, i64* @g_servertype, align 8
  %192 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 4), align 8
  %193 = load i32, i32* @MAX_ADDRESSLENGTH, align 4
  %194 = call i32 @trap_LAN_GetServerAddressString(i64 %191, i64 %192, i8* %12, i32 %193)
  br label %195

195:                                              ; preds = %190, %184
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 6), align 8
  %197 = load i32, i32* %2, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 @strcpy(i8* %201, i8* %12)
  %203 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uis, i32 0, i32 0), align 8
  %204 = trunc i64 %203 to i32
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 6), align 8
  %206 = load i32, i32* %2, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 1
  store i32 %204, i32* %209, align 8
  %210 = load i32, i32* @EXEC_NOW, align 4
  %211 = call i32 @va(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %12)
  %212 = call i32 @trap_Cmd_ExecuteText(i32 %210, i32 %211)
  %213 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 4), align 8
  %214 = add i64 %213, 1
  store i64 %214, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_arenaservers, i32 0, i32 4), align 8
  br label %215

215:                                              ; preds = %195
  %216 = load i32, i32* %1, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %1, align 4
  br label %140

218:                                              ; preds = %179, %154, %148
  %219 = call i32 (...) @trap_LAN_GetPingQueueCount()
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %223, label %221

221:                                              ; preds = %218
  %222 = call i32 (...) @ArenaServers_StopRefresh()
  store i32 1, i32* %8, align 4
  br label %225

223:                                              ; preds = %218
  %224 = call i32 (...) @ArenaServers_UpdateMenu()
  store i32 0, i32* %8, align 4
  br label %225

225:                                              ; preds = %223, %221, %44, %37, %31
  %226 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %226)
  %227 = load i32, i32* %8, align 4
  switch i32 %227, label %229 [
    i32 0, label %228
    i32 1, label %228
  ]

228:                                              ; preds = %225, %225
  ret void

229:                                              ; preds = %225
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @trap_LAN_GetServerCount(i64) #2

declare dso_local i32 @ArenaServers_MaxPing(...) #2

declare dso_local i32 @trap_LAN_GetPing(i32, i8*, i32, i32*) #2

declare dso_local i32 @Q_stricmp(i8*, i8*) #2

declare dso_local i32 @trap_LAN_GetPingInfo(i32, i8*, i32) #2

declare dso_local i32 @ArenaServers_Insert(i8*, i8*, i32) #2

declare dso_local i32 @trap_LAN_ClearPing(i32) #2

declare dso_local i32 @trap_LAN_GetPingQueueCount(...) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @trap_LAN_GetServerAddressString(i64, i64, i8*, i32) #2

declare dso_local i32 @trap_Cmd_ExecuteText(i32, i32) #2

declare dso_local i32 @va(i8*, i8*) #2

declare dso_local i32 @ArenaServers_StopRefresh(...) #2

declare dso_local i32 @ArenaServers_UpdateMenu(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
