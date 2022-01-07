; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..inputdrivers_joypadlinuxraw_joypad.c_linuxraw_joypad_poll.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..inputdrivers_joypadlinuxraw_joypad.c_linuxraw_joypad_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.linuxraw_joypad = type { i32 }
%struct.inotify_event = type { i64, i32, i64 }
%struct.epoll_event = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@MAX_USERS = common dso_local global i32 0, align 4
@linuxraw_epoll = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@NAME_MAX = common dso_local global i32 0, align 4
@linuxraw_inotify = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"js\00", align 1
@IN_DELETE = common dso_local global i32 0, align 4
@linuxraw_pads = common dso_local global %struct.TYPE_6__* null, align 8
@linuxraw_hotplug = common dso_local global i64 0, align 8
@IN_CREATE = common dso_local global i32 0, align 4
@IN_ATTRIB = common dso_local global i32 0, align 4
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"/dev/input/%s\00", align 1
@linuxraw_joypad = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @linuxraw_joypad_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linuxraw_joypad_poll() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.linuxraw_joypad*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.inotify_event*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = load i32, i32* @MAX_USERS, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %3, align 8
  %18 = alloca %struct.epoll_event, i64 %16, align 16
  store i64 %16, i64* %4, align 8
  br label %19

19:                                               ; preds = %30, %0
  %20 = load i32, i32* @linuxraw_epoll, align 4
  %21 = load i32, i32* @MAX_USERS, align 4
  %22 = add nsw i32 %21, 1
  %23 = call i32 @epoll_wait(i32 %20, %struct.epoll_event* %18, i32 %22, i32 0)
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i64, i64* @errno, align 8
  %28 = load i64, i64* @EINTR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %19

31:                                               ; preds = %26, %19
  store i32 0, i32* %1, align 4
  br label %32

32:                                               ; preds = %227, %31
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* %2, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %230

36:                                               ; preds = %32
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %18, i64 %38
  %40 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.linuxraw_joypad*
  store %struct.linuxraw_joypad* %43, %struct.linuxraw_joypad** %5, align 8
  %44 = load %struct.linuxraw_joypad*, %struct.linuxraw_joypad** %5, align 8
  %45 = icmp ne %struct.linuxraw_joypad* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load %struct.linuxraw_joypad*, %struct.linuxraw_joypad** %5, align 8
  %48 = call i32 @linuxraw_poll_pad(%struct.linuxraw_joypad* %47)
  br label %226

49:                                               ; preds = %36
  %50 = load i32, i32* @NAME_MAX, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 24, %51
  %53 = add i64 %52, 1
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i64 @calloc(i32 1, i64 %54)
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** %9, align 8
  br label %57

57:                                               ; preds = %222, %49
  %58 = load i32, i32* @linuxraw_inotify, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @read(i32 %58, i8* %59, i64 %60)
  store i32 %61, i32* %7, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %223

63:                                               ; preds = %57
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = bitcast i8* %65 to %struct.inotify_event*
  store %struct.inotify_event* %66, %struct.inotify_event** %10, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  store i8 0, i8* %71, align 1
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %213, %63
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %222

76:                                               ; preds = %72
  %77 = load i8*, i8** %9, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = bitcast i8* %80 to %struct.inotify_event*
  store %struct.inotify_event* %81, %struct.inotify_event** %10, align 8
  %82 = load %struct.inotify_event*, %struct.inotify_event** %10, align 8
  %83 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @strstr(i64 %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %86 = load %struct.inotify_event*, %struct.inotify_event** %10, align 8
  %87 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %76
  br label %213

91:                                               ; preds = %76
  %92 = load %struct.inotify_event*, %struct.inotify_event** %10, align 8
  %93 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 2
  %96 = call i32 @strtoul(i64 %95, i32* null, i32 0)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @MAX_USERS, align 4
  %99 = icmp uge i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %213

101:                                              ; preds = %91
  %102 = load %struct.inotify_event*, %struct.inotify_event** %10, align 8
  %103 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @IN_DELETE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %164

108:                                              ; preds = %101
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** @linuxraw_pads, align 8
  %110 = load i32, i32* %11, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp sge i32 %114, 0
  br i1 %115, label %116, label %163

116:                                              ; preds = %108
  %117 = load i64, i64* @linuxraw_hotplug, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %116
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** @linuxraw_pads, align 8
  %122 = load i32, i32* %11, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @input_autoconfigure_disconnect(i32 %120, i8* %126)
  br label %128

128:                                              ; preds = %119, %116
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** @linuxraw_pads, align 8
  %130 = load i32, i32* %11, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @close(i32 %134)
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** @linuxraw_pads, align 8
  %137 = load i32, i32* %11, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 3
  store i64 0, i64* %140, align 8
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** @linuxraw_pads, align 8
  %142 = load i32, i32* %11, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @memset(i32 %146, i32 0, i32 4)
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** @linuxraw_pads, align 8
  %149 = load i32, i32* %11, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  store i32 -1, i32* %152, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** @linuxraw_pads, align 8
  %154 = load i32, i32* %11, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  store i8 0, i8* %158, align 1
  %159 = load i32, i32* %11, align 4
  %160 = call i32 @linuxraw_joypad_name(i32 %159)
  %161 = load i32, i32* %11, align 4
  %162 = call i32 @input_autoconfigure_connect(i8* null, i32* null, i32 %160, i32 %161, i32 0, i32 0)
  br label %163

163:                                              ; preds = %128, %108
  br label %212

164:                                              ; preds = %101
  %165 = load %struct.inotify_event*, %struct.inotify_event** %10, align 8
  %166 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @IN_CREATE, align 4
  %169 = load i32, i32* @IN_ATTRIB, align 4
  %170 = or i32 %168, %169
  %171 = and i32 %167, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %211

173:                                              ; preds = %164
  %174 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %175 = zext i32 %174 to i64
  %176 = call i8* @llvm.stacksave()
  store i8* %176, i8** %12, align 8
  %177 = alloca i8, i64 %175, align 16
  store i64 %175, i64* %13, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 0
  store i8 0, i8* %178, align 16
  %179 = trunc i64 %175 to i32
  %180 = load %struct.inotify_event*, %struct.inotify_event** %10, align 8
  %181 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @snprintf(i8* %177, i32 %179, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %182)
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** @linuxraw_pads, align 8
  %185 = load i32, i32* %11, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @string_is_empty(i8* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %209, label %192

192:                                              ; preds = %173
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** @linuxraw_pads, align 8
  %194 = load i32, i32* %11, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i64 %195
  %197 = call i64 @linuxraw_joypad_init_pad(i8* %177, %struct.TYPE_6__* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %209

199:                                              ; preds = %192
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** @linuxraw_pads, align 8
  %201 = load i32, i32* %11, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 1
  %205 = load i8*, i8** %204, align 8
  %206 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @linuxraw_joypad, i32 0, i32 0), align 4
  %207 = load i32, i32* %11, align 4
  %208 = call i32 @input_autoconfigure_connect(i8* %205, i32* null, i32 %206, i32 %207, i32 0, i32 0)
  br label %209

209:                                              ; preds = %199, %192, %173
  %210 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %210)
  br label %211

211:                                              ; preds = %209, %164
  br label %212

212:                                              ; preds = %211, %163
  br label %213

213:                                              ; preds = %212, %100, %90
  %214 = load %struct.inotify_event*, %struct.inotify_event** %10, align 8
  %215 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = add i64 %216, 24
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = add i64 %219, %217
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %6, align 4
  br label %72

222:                                              ; preds = %72
  br label %57

223:                                              ; preds = %57
  %224 = load i8*, i8** %9, align 8
  %225 = call i32 @free(i8* %224)
  br label %226

226:                                              ; preds = %223, %46
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %1, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %1, align 4
  br label %32

230:                                              ; preds = %32
  %231 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %231)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @epoll_wait(i32, %struct.epoll_event*, i32, i32) #2

declare dso_local i32 @linuxraw_poll_pad(%struct.linuxraw_joypad*) #2

declare dso_local i64 @calloc(i32, i64) #2

declare dso_local i32 @read(i32, i8*, i64) #2

declare dso_local i64 @strstr(i64, i8*) #2

declare dso_local i32 @strtoul(i64, i32*, i32) #2

declare dso_local i32 @input_autoconfigure_disconnect(i32, i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @memset(i32, i32, i32) #2

declare dso_local i32 @input_autoconfigure_connect(i8*, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @linuxraw_joypad_name(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #2

declare dso_local i32 @string_is_empty(i8*) #2

declare dso_local i64 @linuxraw_joypad_init_pad(i8*, %struct.TYPE_6__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
