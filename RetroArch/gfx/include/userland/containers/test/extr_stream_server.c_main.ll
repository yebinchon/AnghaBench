; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_stream_server.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_stream_server.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_BUFFER_LEN = common dso_local global i32 0, align 4
@MAX_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Usage:\0A%s <port> [<connections>]\0A\00", align 1
@VC_CONTAINER_NET_OPEN_FLAG_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"vc_container_net_open failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@VC_CONTAINER_NET_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"vc_container_net_listen failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"vc_container_net_accept failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Connection from %s:%hu\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"Rx:\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"Tx:\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"vc_container_net_write failed: %d\0A\00", align 1
@VC_CONTAINER_NET_ERROR_CONNECTION_LOST = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"vc_container_net_read failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8, align 1
  %20 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %21 = load i32, i32* @MAX_BUFFER_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %9, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %25 = load i32, i32* @MAX_NAME_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  store i32 1, i32* %14, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %33)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %182

35:                                               ; preds = %2
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* @VC_CONTAINER_NET_OPEN_FLAG_STREAM, align 4
  %40 = call i32* @vc_container_net_open(i32* null, i8* %38, i32 %39, i32* %8)
  store i32* %40, i32** %6, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %8, align 4
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  store i32 2, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %182

46:                                               ; preds = %35
  %47 = load i32, i32* %4, align 4
  %48 = icmp sgt i32 %47, 2
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 2
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @sscanf(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %14)
  br label %54

54:                                               ; preds = %49, %46
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @vc_container_net_listen(i32* %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @VC_CONTAINER_NET_SUCCESS, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @vc_container_net_close(i32* %64)
  store i32 3, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %182

66:                                               ; preds = %54
  store i32 0, i32* %13, align 4
  br label %67

67:                                               ; preds = %169, %66
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %172

71:                                               ; preds = %67
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @vc_container_net_accept(i32* %72, i32** %7)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @VC_CONTAINER_NET_SUCCESS, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load i32, i32* %8, align 4
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @vc_container_net_close(i32* %80)
  store i32 3, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %182

82:                                               ; preds = %71
  %83 = call i32 @strcpy(i8* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %84 = load i32*, i32** %7, align 8
  %85 = trunc i64 %26 to i32
  %86 = call i32 @vc_container_net_get_client_name(i32* %84, i8* %27, i32 %85)
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @vc_container_net_get_client_port(i32* %87, i16* %12)
  %89 = load i16, i16* %12, align 2
  %90 = zext i16 %89 to i32
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %27, i32 %90)
  br label %92

92:                                               ; preds = %154, %82
  %93 = load i32*, i32** %7, align 8
  %94 = sub i64 %22, 1
  %95 = trunc i64 %94 to i32
  %96 = call i64 @vc_container_net_read(i32* %93, i8* %24, i32 %95)
  store i64 %96, i64* %15, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %155

98:                                               ; preds = %92
  store i8* %24, i8** %17, align 8
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i64 0, i64* %18, align 8
  br label %100

100:                                              ; preds = %119, %98
  %101 = load i64, i64* %18, align 8
  %102 = load i64, i64* %15, align 8
  %103 = icmp ult i64 %101, %102
  br i1 %103, label %104, label %124

104:                                              ; preds = %100
  %105 = load i8*, i8** %17, align 8
  %106 = load i8, i8* %105, align 1
  store i8 %106, i8* %19, align 1
  %107 = load i8, i8* %19, align 1
  %108 = call i32 @putchar(i8 signext %107)
  %109 = load i8, i8* %19, align 1
  %110 = call i64 @isalpha(i8 zeroext %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %104
  %113 = load i8*, i8** %17, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = xor i32 %115, 32
  %117 = trunc i32 %116 to i8
  store i8 %117, i8* %113, align 1
  br label %118

118:                                              ; preds = %112, %104
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %18, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %18, align 8
  %122 = load i8*, i8** %17, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %17, align 8
  br label %100

124:                                              ; preds = %100
  store i8* %24, i8** %17, align 8
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %126

126:                                              ; preds = %153, %124
  %127 = load i64, i64* %15, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %154

129:                                              ; preds = %126
  %130 = load i32*, i32** %7, align 8
  %131 = load i8*, i8** %17, align 8
  %132 = load i64, i64* %15, align 8
  %133 = call i64 @vc_container_net_write(i32* %130, i8* %131, i64 %132)
  store i64 %133, i64* %20, align 8
  %134 = load i64, i64* %20, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %129
  %137 = load i32*, i32** %7, align 8
  %138 = call i32 @vc_container_net_status(i32* %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %139)
  br label %154

141:                                              ; preds = %129
  br label %142

142:                                              ; preds = %146, %141
  %143 = load i64, i64* %20, align 8
  %144 = add i64 %143, -1
  store i64 %144, i64* %20, align 8
  %145 = icmp ne i64 %143, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %142
  %147 = load i64, i64* %15, align 8
  %148 = add i64 %147, -1
  store i64 %148, i64* %15, align 8
  %149 = load i8*, i8** %17, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %17, align 8
  %151 = load i8, i8* %149, align 1
  %152 = call i32 @putchar(i8 signext %151)
  br label %142

153:                                              ; preds = %142
  br label %126

154:                                              ; preds = %136, %126
  br label %92

155:                                              ; preds = %92
  %156 = load i32*, i32** %7, align 8
  %157 = call i32 @vc_container_net_status(i32* %156)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @VC_CONTAINER_NET_SUCCESS, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %155
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* @VC_CONTAINER_NET_ERROR_CONNECTION_LOST, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  br label %172

166:                                              ; preds = %161, %155
  %167 = load i32*, i32** %7, align 8
  %168 = call i32 @vc_container_net_close(i32* %167)
  br label %169

169:                                              ; preds = %166
  %170 = load i32, i32* %13, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %13, align 4
  br label %67

172:                                              ; preds = %165, %67
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @VC_CONTAINER_NET_SUCCESS, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load i32, i32* %8, align 4
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %177)
  br label %179

179:                                              ; preds = %176, %172
  %180 = load i32*, i32** %6, align 8
  %181 = call i32 @vc_container_net_close(i32* %180)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %182

182:                                              ; preds = %179, %77, %61, %43, %30
  %183 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %183)
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32* @vc_container_net_open(i32*, i8*, i32, i32*) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*) #2

declare dso_local i32 @vc_container_net_listen(i32*, i32) #2

declare dso_local i32 @vc_container_net_close(i32*) #2

declare dso_local i32 @vc_container_net_accept(i32*, i32**) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @vc_container_net_get_client_name(i32*, i8*, i32) #2

declare dso_local i32 @vc_container_net_get_client_port(i32*, i16*) #2

declare dso_local i64 @vc_container_net_read(i32*, i8*, i32) #2

declare dso_local i32 @putchar(i8 signext) #2

declare dso_local i64 @isalpha(i8 zeroext) #2

declare dso_local i64 @vc_container_net_write(i32*, i8*, i64) #2

declare dso_local i32 @vc_container_net_status(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
