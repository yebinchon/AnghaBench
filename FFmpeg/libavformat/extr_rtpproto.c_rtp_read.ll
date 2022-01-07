; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpproto.c_rtp_read.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpproto.c_rtp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.sockaddr_storage, %struct.sockaddr_storage, i32, i32 }
%struct.sockaddr_storage = type { i32 }
%struct.pollfd = type { i32, i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@POLLIN = common dso_local global i32 0, align 4
@AVIO_FLAG_NONBLOCK = common dso_local global i32 0, align 4
@AVERROR_EXIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32)* @rtp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtp_read(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x %struct.pollfd], align 16
  %13 = alloca i32, align 4
  %14 = alloca [2 x %struct.sockaddr_storage*], align 16
  %15 = alloca [2 x i32*], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %8, align 8
  %19 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %12, i64 0, i64 0
  %20 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %20, align 4
  %24 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %19, i32 0, i32 1
  %25 = load i32, i32* @POLLIN, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %19, i32 0, i32 2
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %19, i32 0, i32 3
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %19, i32 0, i32 4
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %19, i64 1
  %30 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %30, align 4
  %34 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %29, i32 0, i32 1
  %35 = load i32, i32* @POLLIN, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %29, i32 0, i32 2
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %29, i32 0, i32 3
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %29, i32 0, i32 4
  store i32 0, i32* %38, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @AVIO_FLAG_NONBLOCK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 0, i32 100
  store i32 %46, i32* %13, align 4
  %47 = getelementptr inbounds [2 x %struct.sockaddr_storage*], [2 x %struct.sockaddr_storage*]* %14, i64 0, i64 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 4
  store %struct.sockaddr_storage* %49, %struct.sockaddr_storage** %47, align 8
  %50 = getelementptr inbounds %struct.sockaddr_storage*, %struct.sockaddr_storage** %47, i64 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  store %struct.sockaddr_storage* %52, %struct.sockaddr_storage** %50, align 8
  %53 = getelementptr inbounds [2 x i32*], [2 x i32*]* %15, i64 0, i64 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32* %55, i32** %53, align 8
  %56 = getelementptr inbounds i32*, i32** %53, i64 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store i32* %58, i32** %56, align 8
  br label %59

59:                                               ; preds = %166, %151, %3
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = call i64 @ff_check_interrupt(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @AVERROR_EXIT, align 4
  store i32 %65, i32* %4, align 4
  br label %167

66:                                               ; preds = %59
  %67 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %12, i64 0, i64 0
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @poll(%struct.pollfd* %67, i32 2, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %142

72:                                               ; preds = %66
  store i32 1, i32* %11, align 4
  br label %73

73:                                               ; preds = %138, %72
  %74 = load i32, i32* %11, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %141

76:                                               ; preds = %73
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %12, i64 0, i64 %78
  %80 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @POLLIN, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %76
  br label %138

86:                                               ; preds = %76
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [2 x i32*], [2 x i32*]* %15, i64 0, i64 %88
  %90 = load i32*, i32** %89, align 8
  store i32 4, i32* %90, align 4
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %12, i64 0, i64 %92
  %94 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [2 x %struct.sockaddr_storage*], [2 x %struct.sockaddr_storage*]* %14, i64 0, i64 %99
  %101 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %100, align 8
  %102 = bitcast %struct.sockaddr_storage* %101 to %struct.sockaddr*
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [2 x i32*], [2 x i32*]* %15, i64 0, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @recvfrom(i32 %95, i32* %96, i32 %97, i32 0, %struct.sockaddr* %102, i32* %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %126

110:                                              ; preds = %86
  %111 = call i64 (...) @ff_neterrno()
  %112 = load i32, i32* @EAGAIN, align 4
  %113 = call i32 @AVERROR(i32 %112)
  %114 = sext i32 %113 to i64
  %115 = icmp eq i64 %111, %114
  br i1 %115, label %122, label %116

116:                                              ; preds = %110
  %117 = call i64 (...) @ff_neterrno()
  %118 = load i32, i32* @EINTR, align 4
  %119 = call i32 @AVERROR(i32 %118)
  %120 = sext i32 %119 to i64
  %121 = icmp eq i64 %117, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %116, %110
  br label %138

123:                                              ; preds = %116
  %124 = load i32, i32* @EIO, align 4
  %125 = call i32 @AVERROR(i32 %124)
  store i32 %125, i32* %4, align 4
  br label %167

126:                                              ; preds = %86
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [2 x %struct.sockaddr_storage*], [2 x %struct.sockaddr_storage*]* %14, i64 0, i64 %128
  %130 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %129, align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  %133 = call i64 @ff_ip_check_source_lists(%struct.sockaddr_storage* %130, i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %126
  br label %138

136:                                              ; preds = %126
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %4, align 4
  br label %167

138:                                              ; preds = %135, %122, %85
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %11, align 4
  br label %73

141:                                              ; preds = %73
  br label %156

142:                                              ; preds = %66
  %143 = load i32, i32* %10, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %142
  %146 = call i64 (...) @ff_neterrno()
  %147 = load i32, i32* @EINTR, align 4
  %148 = call i32 @AVERROR(i32 %147)
  %149 = sext i32 %148 to i64
  %150 = icmp eq i64 %146, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  br label %59

152:                                              ; preds = %145
  %153 = load i32, i32* @EIO, align 4
  %154 = call i32 @AVERROR(i32 %153)
  store i32 %154, i32* %4, align 4
  br label %167

155:                                              ; preds = %142
  br label %156

156:                                              ; preds = %155, %141
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @AVIO_FLAG_NONBLOCK, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %156
  %164 = load i32, i32* @EAGAIN, align 4
  %165 = call i32 @AVERROR(i32 %164)
  store i32 %165, i32* %4, align 4
  br label %167

166:                                              ; preds = %156
  br label %59

167:                                              ; preds = %163, %152, %136, %123, %64
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i64 @ff_check_interrupt(i32*) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @recvfrom(i32, i32*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @ff_neterrno(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @ff_ip_check_source_lists(%struct.sockaddr_storage*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
