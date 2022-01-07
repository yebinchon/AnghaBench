; ModuleID = '/home/carl/AnghaBench/disque/src/extr_anet.c_anetTcpGenericConnect.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_anet.c_anetTcpGenericConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, %struct.addrinfo*, i32, i32, i32 }

@ANET_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@AF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ANET_CONNECT_NONBLOCK = common dso_local global i32 0, align 4
@ANET_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"bind: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"creating socket: %s\00", align 1
@ANET_CONNECT_BE_BINDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8*, i32)* @anetTcpGenericConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anetTcpGenericConnect(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [6 x i8], align 1
  %15 = alloca %struct.addrinfo, align 8
  %16 = alloca %struct.addrinfo*, align 8
  %17 = alloca %struct.addrinfo*, align 8
  %18 = alloca %struct.addrinfo*, align 8
  %19 = alloca %struct.addrinfo*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load i32, i32* @ANET_ERR, align 4
  store i32 %21, i32* %12, align 4
  %22 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @snprintf(i8* %22, i32 6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = call i32 @memset(%struct.addrinfo* %15, i32 0, i32 32)
  %26 = load i32, i32* @AF_UNSPEC, align 4
  %27 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 5
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* @SOCK_STREAM, align 4
  %29 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 4
  store i32 %28, i32* %29, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  %32 = call i32 @getaddrinfo(i8* %30, i8* %31, %struct.addrinfo* %15, %struct.addrinfo** %16)
  store i32 %32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %5
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @gai_strerror(i32 %36)
  %38 = call i32 @anetSetError(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @ANET_ERR, align 4
  store i32 %39, i32* %6, align 4
  br label %190

40:                                               ; preds = %5
  %41 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  store %struct.addrinfo* %41, %struct.addrinfo** %18, align 8
  br label %42

42:                                               ; preds = %146, %40
  %43 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %44 = icmp ne %struct.addrinfo* %43, null
  br i1 %44, label %45, label %150

45:                                               ; preds = %42
  %46 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %47 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %50 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %53 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @socket(i32 %48, i32 %51, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %146

58:                                               ; preds = %45
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @anetSetReuseAddr(i8* %59, i32 %60)
  %62 = load i32, i32* @ANET_ERR, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %159

65:                                               ; preds = %58
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @ANET_CONNECT_NONBLOCK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i64 @anetNonBlock(i8* %71, i32 %72)
  %74 = load i64, i64* @ANET_OK, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %159

77:                                               ; preds = %70, %65
  %78 = load i8*, i8** %10, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %121

80:                                               ; preds = %77
  store i32 0, i32* %20, align 4
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 @getaddrinfo(i8* %81, i8* null, %struct.addrinfo* %15, %struct.addrinfo** %17)
  store i32 %82, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @gai_strerror(i32 %86)
  %88 = call i32 @anetSetError(i8* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %159

89:                                               ; preds = %80
  %90 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  store %struct.addrinfo* %90, %struct.addrinfo** %19, align 8
  br label %91

91:                                               ; preds = %106, %89
  %92 = load %struct.addrinfo*, %struct.addrinfo** %19, align 8
  %93 = icmp ne %struct.addrinfo* %92, null
  br i1 %93, label %94, label %110

94:                                               ; preds = %91
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.addrinfo*, %struct.addrinfo** %19, align 8
  %97 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.addrinfo*, %struct.addrinfo** %19, align 8
  %100 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @bind(i32 %95, i32 %98, i32 %101)
  %103 = icmp ne i32 %102, -1
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  store i32 1, i32* %20, align 4
  br label %110

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %105
  %107 = load %struct.addrinfo*, %struct.addrinfo** %19, align 8
  %108 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %107, i32 0, i32 2
  %109 = load %struct.addrinfo*, %struct.addrinfo** %108, align 8
  store %struct.addrinfo* %109, %struct.addrinfo** %19, align 8
  br label %91

110:                                              ; preds = %104, %91
  %111 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %112 = call i32 @freeaddrinfo(%struct.addrinfo* %111)
  %113 = load i32, i32* %20, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  %116 = load i8*, i8** %7, align 8
  %117 = load i64, i64* @errno, align 8
  %118 = call i32 @strerror(i64 %117)
  %119 = call i32 @anetSetError(i8* %116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  br label %159

120:                                              ; preds = %110
  br label %121

121:                                              ; preds = %120, %77
  %122 = load i32, i32* %12, align 4
  %123 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %124 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %127 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @connect(i32 %122, i32 %125, i32 %128)
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %131, label %145

131:                                              ; preds = %121
  %132 = load i64, i64* @errno, align 8
  %133 = load i64, i64* @EINPROGRESS, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %131
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @ANET_CONNECT_NONBLOCK, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %168

141:                                              ; preds = %135, %131
  %142 = load i32, i32* %12, align 4
  %143 = call i32 @close(i32 %142)
  %144 = load i32, i32* @ANET_ERR, align 4
  store i32 %144, i32* %12, align 4
  br label %146

145:                                              ; preds = %121
  br label %168

146:                                              ; preds = %141, %57
  %147 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %148 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %147, i32 0, i32 2
  %149 = load %struct.addrinfo*, %struct.addrinfo** %148, align 8
  store %struct.addrinfo* %149, %struct.addrinfo** %18, align 8
  br label %42

150:                                              ; preds = %42
  %151 = load %struct.addrinfo*, %struct.addrinfo** %18, align 8
  %152 = icmp eq %struct.addrinfo* %151, null
  br i1 %152, label %153, label %158

153:                                              ; preds = %150
  %154 = load i8*, i8** %7, align 8
  %155 = load i64, i64* @errno, align 8
  %156 = call i32 @strerror(i64 %155)
  %157 = call i32 @anetSetError(i8* %154, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %153, %150
  br label %159

159:                                              ; preds = %158, %115, %84, %76, %64
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* @ANET_ERR, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = load i32, i32* %12, align 4
  %165 = call i32 @close(i32 %164)
  %166 = load i32, i32* @ANET_ERR, align 4
  store i32 %166, i32* %12, align 4
  br label %167

167:                                              ; preds = %163, %159
  br label %168

168:                                              ; preds = %167, %145, %140
  %169 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %170 = call i32 @freeaddrinfo(%struct.addrinfo* %169)
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* @ANET_ERR, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %188

174:                                              ; preds = %168
  %175 = load i8*, i8** %10, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %188

177:                                              ; preds = %174
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* @ANET_CONNECT_BE_BINDING, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %177
  %183 = load i8*, i8** %7, align 8
  %184 = load i8*, i8** %8, align 8
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* %11, align 4
  %187 = call i32 @anetTcpGenericConnect(i8* %183, i8* %184, i32 %185, i8* null, i32 %186)
  store i32 %187, i32* %6, align 4
  br label %190

188:                                              ; preds = %177, %174, %168
  %189 = load i32, i32* %12, align 4
  store i32 %189, i32* %6, align 4
  br label %190

190:                                              ; preds = %188, %182, %34
  %191 = load i32, i32* %6, align 4
  ret i32 %191
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @anetSetError(i8*, i8*, i32) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @anetSetReuseAddr(i8*, i32) #1

declare dso_local i64 @anetNonBlock(i8*, i32) #1

declare dso_local i32 @bind(i32, i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @connect(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
