; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_stream_client.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_stream_client.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_BUFFER_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Usage:\0A%s <address> <port>\0A\00", align 1
@VC_CONTAINER_NET_OPEN_FLAG_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"vc_container_net_open failed: %d\0A\00", align 1
@VC_CONTAINER_NET_CONTROL_SET_READ_TIMEOUT_MS = common dso_local global i32 0, align 4
@YIELD_PERIOD_MS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"vc_container_net_write failed: %d\0A\00", align 1
@VC_CONTAINER_NET_ERROR_TIMED_OUT = common dso_local global i32 0, align 4
@VC_CONTAINER_NET_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"vc_container_net_read failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %20 = load i32, i32* @MAX_BUFFER_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %24 = load i32, i32* @MAX_BUFFER_LEN, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %32)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %155

34:                                               ; preds = %2
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 2
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* @VC_CONTAINER_NET_OPEN_FLAG_STREAM, align 4
  %42 = call i32* @vc_container_net_open(i8* %37, i8* %40, i32 %41, i32* %7)
  store i32* %42, i32** %6, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  store i32 2, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %155

48:                                               ; preds = %34
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* @VC_CONTAINER_NET_CONTROL_SET_READ_TIMEOUT_MS, align 4
  %51 = load i32, i32* @YIELD_PERIOD_MS, align 4
  %52 = call i32 @local_net_control(i32* %49, i32 %50, i32 %51)
  %53 = call i32 @nb_set_nonblocking_input(i32 1)
  br label %54

54:                                               ; preds = %150, %48
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %151

57:                                               ; preds = %54
  %58 = call i64 (...) @nb_char_available()
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %118

60:                                               ; preds = %57
  %61 = call signext i8 (...) @nb_get_char()
  store i8 %61, i8* %15, align 1
  %62 = load i8, i8* %15, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 26
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %151

66:                                               ; preds = %60
  %67 = load i8, i8* %15, align 1
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %23, i64 %70
  store i8 %67, i8* %71, align 1
  %72 = load i8, i8* %15, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 13
  br i1 %74, label %75, label %83

75:                                               ; preds = %66
  store i8 10, i8* %15, align 1
  %76 = load i8, i8* %15, align 1
  %77 = call i32 @nb_put_char(i8 signext %76)
  %78 = load i8, i8* %15, align 1
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %23, i64 %81
  store i8 %78, i8* %82, align 1
  br label %83

83:                                               ; preds = %75, %66
  %84 = load i8, i8* %15, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 10
  br i1 %86, label %92, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = sub i64 %21, 1
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %117

92:                                               ; preds = %87, %83
  store i32 0, i32* %16, align 4
  br label %93

93:                                               ; preds = %109, %92
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %116

96:                                               ; preds = %93
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %23, i64 %99
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @vc_container_net_write(i32* %97, i8* %100, i32 %101)
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %17, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %96
  %106 = load i32*, i32** %6, align 8
  %107 = call i32 @vc_container_net_status(i32* %106)
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %116

109:                                              ; preds = %96
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* %12, align 4
  %112 = sub nsw i32 %111, %110
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* %16, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %16, align 4
  br label %93

116:                                              ; preds = %105, %93
  br label %117

117:                                              ; preds = %116, %87
  br label %118

118:                                              ; preds = %117, %57
  %119 = load i32*, i32** %6, align 8
  %120 = sub i64 %25, 1
  %121 = trunc i64 %120 to i32
  %122 = call i64 @vc_container_net_read(i32* %119, i8* %26, i32 %121)
  store i64 %122, i64* %13, align 8
  %123 = load i64, i64* %13, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %118
  store i8* %26, i8** %18, align 8
  br label %126

126:                                              ; preds = %130, %125
  %127 = load i64, i64* %13, align 8
  %128 = add i64 %127, -1
  store i64 %128, i64* %13, align 8
  %129 = icmp ne i64 %127, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = load i8*, i8** %18, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %18, align 8
  %133 = load i8, i8* %131, align 1
  %134 = call i32 @nb_put_char(i8 signext %133)
  br label %126

135:                                              ; preds = %126
  br label %150

136:                                              ; preds = %118
  %137 = load i32*, i32** %6, align 8
  %138 = call i32 @vc_container_net_status(i32* %137)
  store i32 %138, i32* %19, align 4
  %139 = load i32, i32* %19, align 4
  %140 = load i32, i32* @VC_CONTAINER_NET_ERROR_TIMED_OUT, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %136
  %143 = load i32, i32* %19, align 4
  %144 = load i32, i32* @VC_CONTAINER_NET_SUCCESS, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load i32, i32* %19, align 4
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %147)
  store i32 0, i32* %11, align 4
  br label %149

149:                                              ; preds = %146, %142, %136
  br label %150

150:                                              ; preds = %149, %135
  br label %54

151:                                              ; preds = %65, %54
  %152 = call i32 @nb_set_nonblocking_input(i32 0)
  %153 = load i32*, i32** %6, align 8
  %154 = call i32 @vc_container_net_close(i32* %153)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %155

155:                                              ; preds = %151, %45, %29
  %156 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %156)
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32* @vc_container_net_open(i8*, i8*, i32, i32*) #2

declare dso_local i32 @local_net_control(i32*, i32, i32) #2

declare dso_local i32 @nb_set_nonblocking_input(i32) #2

declare dso_local i64 @nb_char_available(...) #2

declare dso_local signext i8 @nb_get_char(...) #2

declare dso_local i32 @nb_put_char(i8 signext) #2

declare dso_local i32 @vc_container_net_write(i32*, i8*, i32) #2

declare dso_local i32 @vc_container_net_status(i32*) #2

declare dso_local i64 @vc_container_net_read(i32*, i8*, i32) #2

declare dso_local i32 @vc_container_net_close(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
