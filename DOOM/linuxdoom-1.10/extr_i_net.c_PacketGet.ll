; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_net.c_PacketGet.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_net.c_PacketGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_12__*, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i8*, i8*, i32, i32 }
%struct.sockaddr_in = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@insocket = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GetPacket: %s\00", align 1
@doomcom = common dso_local global %struct.TYPE_17__* null, align 8
@PacketGet.first = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"len=%d:p=[0x%x 0x%x] \0A\00", align 1
@sendaddress = common dso_local global %struct.TYPE_15__* null, align 8
@netbuffer = common dso_local global %struct.TYPE_16__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PacketGet() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__, align 8
  store i32 8, i32* %4, align 4
  %6 = load i32, i32* @insocket, align 4
  %7 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %8 = call i32 @recvfrom(i32 %6, %struct.TYPE_14__* %5, i32 32, i32 0, %struct.sockaddr* %7, i32* %4)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %22

11:                                               ; preds = %0
  %12 = load i64, i64* @errno, align 8
  %13 = load i64, i64* @EWOULDBLOCK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i64, i64* @errno, align 8
  %17 = call i32 @strerror(i64 %16)
  %18 = call i32 @I_Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %15, %11
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** @doomcom, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  store i32 -1, i32* %21, align 4
  br label %190

22:                                               ; preds = %0
  %23 = load i32, i32* @PacketGet.first, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i32, i32* %2, align 4
  %27 = bitcast %struct.TYPE_14__* %5 to i32*
  %28 = load i32, i32* %27, align 8
  %29 = bitcast %struct.TYPE_14__* %5 to i32*
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %25, %22
  store i32 0, i32* @PacketGet.first, align 4
  store i32 0, i32* %1, align 4
  br label %34

34:                                               ; preds = %54, %33
  %35 = load i32, i32* %1, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** @doomcom, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** @sendaddress, align 8
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %43, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %57

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %1, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %1, align 4
  br label %34

57:                                               ; preds = %52, %34
  %58 = load i32, i32* %1, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** @doomcom, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** @doomcom, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  store i32 -1, i32* %65, align 4
  br label %190

66:                                               ; preds = %57
  %67 = load i32, i32* %1, align 4
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** @doomcom, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %2, align 4
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** @doomcom, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ntohl(i32 %74)
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** @netbuffer, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** @netbuffer, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** @netbuffer, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** @netbuffer, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** @netbuffer, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %187, %66
  %95 = load i32, i32* %2, align 4
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** @netbuffer, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %190

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = load i32, i32* %2, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** @netbuffer, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = load i32, i32* %2, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 5
  store i32 %107, i32* %114, align 4
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  %117 = load i32, i32* %2, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** @netbuffer, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %123, align 8
  %125 = load i32, i32* %2, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 4
  store i32 %121, i32* %128, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %129, align 8
  %131 = load i32, i32* %2, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @ntohs(i32 %135)
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** @netbuffer, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = load i32, i32* %2, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 3
  store i8* %136, i8** %143, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %144, align 8
  %146 = load i32, i32* %2, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i8* @ntohs(i32 %150)
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** @netbuffer, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = load i32, i32* %2, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 2
  store i8* %151, i8** %158, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %159, align 8
  %161 = load i32, i32* %2, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** @netbuffer, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %167, align 8
  %169 = load i32, i32* %2, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  store i32 %165, i32* %172, align 4
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %173, align 8
  %175 = load i32, i32* %2, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** @netbuffer, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %181, align 8
  %183 = load i32, i32* %2, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  store i32 %179, i32* %186, align 8
  br label %187

187:                                              ; preds = %100
  %188 = load i32, i32* %2, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %2, align 4
  br label %94

190:                                              ; preds = %19, %63, %94
  ret void
}

declare dso_local i32 @recvfrom(i32, %struct.TYPE_14__*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @I_Error(i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i8* @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
