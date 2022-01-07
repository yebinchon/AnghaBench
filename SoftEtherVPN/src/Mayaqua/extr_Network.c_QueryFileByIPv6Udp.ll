; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_QueryFileByIPv6Udp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_QueryFileByIPv6Udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOCK_LATER = common dso_local global i64 0, align 8
@UDP_FILE_QUERY_DST_PORT = common dso_local global i64 0, align 8
@UDP_FILE_QUERY_MAGIC_NUMBER = common dso_local global i32 0, align 4
@UDP_FILE_QUERY_RETRY_INTERVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @QueryFileByIPv6Udp(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca float, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %14, align 8
  store i64 65535, i64* %17, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32* %8, i32** %7, align 8
  br label %28

28:                                               ; preds = %27, %3
  %29 = load i32*, i32** %5, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32* null, i32** %4, align 8
  br label %153

32:                                               ; preds = %28
  %33 = call i32* @NewUDP6(i32 0, i32* null)
  store i32* %33, i32** %12, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32* null, i32** %4, align 8
  br label %153

37:                                               ; preds = %32
  %38 = load i64, i64* %17, align 8
  %39 = call float* @Malloc(i64 %38)
  store float* %39, float** %16, align 8
  %40 = call i64 (...) @Tick64()
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %6, align 8
  %43 = add nsw i64 %41, %42
  store i64 %43, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %44 = call i32* (...) @NewInterruptManager()
  store i32* %44, i32** %13, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @AddInterrupt(i32* %45, i64 %46)
  %48 = call i32* (...) @NewSockEvent()
  store i32* %48, i32** %15, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = load i32*, i32** %15, align 8
  %51 = call i32 @JoinSockToSockEvent(i32* %49, i32* %50)
  br label %52

52:                                               ; preds = %37, %136
  %53 = call i64 (...) @Tick64()
  store i64 %53, i64* %18, align 8
  %54 = load i64, i64* %18, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %141

58:                                               ; preds = %52
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %141

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63, %100
  %65 = load i32*, i32** %12, align 8
  %66 = load float*, float** %16, align 8
  %67 = load i64, i64* %17, align 8
  %68 = call i64 @RecvFrom(i32* %65, i32* %19, i64* %20, float* %66, i64 %67)
  store i64 %68, i64* %21, align 8
  %69 = load i64, i64* %21, align 8
  %70 = load i64, i64* @SOCK_LATER, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %75, label %72

72:                                               ; preds = %64
  %73 = load i64, i64* %21, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72, %64
  br label %101

76:                                               ; preds = %72
  %77 = load i64, i64* %20, align 8
  %78 = load i64, i64* @UDP_FILE_QUERY_DST_PORT, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %100

80:                                               ; preds = %76
  %81 = load i64, i64* %21, align 8
  %82 = icmp sge i64 %81, 40
  br i1 %82, label %83, label %99

83:                                               ; preds = %80
  %84 = load float*, float** %16, align 8
  %85 = load i32, i32* @UDP_FILE_QUERY_MAGIC_NUMBER, align 4
  %86 = load i32, i32* @UDP_FILE_QUERY_MAGIC_NUMBER, align 4
  %87 = call i32 @StrLen(i32 %86)
  %88 = call i64 @Cmp(float* %84, i32 %85, i32 %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = call i32* (...) @NewBuf()
  store i32* %91, i32** %14, align 8
  %92 = load i32*, i32** %14, align 8
  %93 = load float*, float** %16, align 8
  %94 = load i64, i64* %21, align 8
  %95 = call i32 @WriteBuf(i32* %92, float* %93, i64 %94)
  %96 = load i32*, i32** %14, align 8
  %97 = call i32 @SeekBuf(i32* %96, i32 0, i32 0)
  br label %101

98:                                               ; preds = %83
  br label %99

99:                                               ; preds = %98, %80
  br label %100

100:                                              ; preds = %99, %76
  br label %64

101:                                              ; preds = %90, %75
  %102 = load i32*, i32** %14, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %141

105:                                              ; preds = %101
  %106 = load i64, i64* %11, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = load i64, i64* %18, align 8
  %110 = load i64, i64* %11, align 8
  %111 = icmp sge i64 %109, %110
  br i1 %111, label %112, label %136

112:                                              ; preds = %108, %105
  store i64 0, i64* %22, align 8
  br label %113

113:                                              ; preds = %126, %112
  %114 = load i64, i64* %22, align 8
  %115 = load i32*, i32** %5, align 8
  %116 = call i64 @LIST_NUM(i32* %115)
  %117 = icmp slt i64 %114, %116
  br i1 %117, label %118, label %129

118:                                              ; preds = %113
  %119 = load i32*, i32** %5, align 8
  %120 = load i64, i64* %22, align 8
  %121 = call i32* @LIST_DATA(i32* %119, i64 %120)
  store i32* %121, i32** %23, align 8
  store float 7.000000e+01, float* %24, align 4
  %122 = load i32*, i32** %12, align 8
  %123 = load i32*, i32** %23, align 8
  %124 = load i64, i64* @UDP_FILE_QUERY_DST_PORT, align 8
  %125 = call i32 @SendTo(i32* %122, i32* %123, i64 %124, float* %24, i32 1)
  br label %126

126:                                              ; preds = %118
  %127 = load i64, i64* %22, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %22, align 8
  br label %113

129:                                              ; preds = %113
  %130 = load i64, i64* %18, align 8
  %131 = load i64, i64* @UDP_FILE_QUERY_RETRY_INTERVAL, align 8
  %132 = add nsw i64 %130, %131
  store i64 %132, i64* %11, align 8
  %133 = load i32*, i32** %13, align 8
  %134 = load i64, i64* %11, align 8
  %135 = call i32 @AddInterrupt(i32* %133, i64 %134)
  br label %136

136:                                              ; preds = %129, %108
  %137 = load i32*, i32** %15, align 8
  %138 = load i32*, i32** %13, align 8
  %139 = call i32 @GetNextIntervalForInterrupt(i32* %138)
  %140 = call i32 @WaitSockEvent(i32* %137, i32 %139)
  br label %52

141:                                              ; preds = %104, %62, %57
  %142 = load i32*, i32** %13, align 8
  %143 = call i32 @FreeInterruptManager(i32* %142)
  %144 = load i32*, i32** %12, align 8
  %145 = call i32 @Disconnect(i32* %144)
  %146 = load i32*, i32** %12, align 8
  %147 = call i32 @ReleaseSock(i32* %146)
  %148 = load i32*, i32** %15, align 8
  %149 = call i32 @ReleaseSockEvent(i32* %148)
  %150 = load float*, float** %16, align 8
  %151 = call i32 @Free(float* %150)
  %152 = load i32*, i32** %14, align 8
  store i32* %152, i32** %4, align 8
  br label %153

153:                                              ; preds = %141, %36, %31
  %154 = load i32*, i32** %4, align 8
  ret i32* %154
}

declare dso_local i32* @NewUDP6(i32, i32*) #1

declare dso_local float* @Malloc(i64) #1

declare dso_local i64 @Tick64(...) #1

declare dso_local i32* @NewInterruptManager(...) #1

declare dso_local i32 @AddInterrupt(i32*, i64) #1

declare dso_local i32* @NewSockEvent(...) #1

declare dso_local i32 @JoinSockToSockEvent(i32*, i32*) #1

declare dso_local i64 @RecvFrom(i32*, i32*, i64*, float*, i64) #1

declare dso_local i64 @Cmp(float*, i32, i32) #1

declare dso_local i32 @StrLen(i32) #1

declare dso_local i32* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(i32*, float*, i64) #1

declare dso_local i32 @SeekBuf(i32*, i32, i32) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local i32* @LIST_DATA(i32*, i64) #1

declare dso_local i32 @SendTo(i32*, i32*, i64, float*, i32) #1

declare dso_local i32 @WaitSockEvent(i32*, i32) #1

declare dso_local i32 @GetNextIntervalForInterrupt(i32*) #1

declare dso_local i32 @FreeInterruptManager(i32*) #1

declare dso_local i32 @Disconnect(i32*) #1

declare dso_local i32 @ReleaseSock(i32*) #1

declare dso_local i32 @ReleaseSockEvent(i32*) #1

declare dso_local i32 @Free(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
