; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_norm.c_pf_normalize_tcp_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_norm.c_pf_normalize_tcp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.ip6_hdr* }
%struct.ip6_hdr = type { i32, i32 }
%struct.pf_pdesc = type { i32 }
%struct.tcphdr = type { i32, i32 }
%struct.pf_state_peer = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i8*, i8*, i8*, i32, i32, i32 }

@pf_state_scrub_pl = common dso_local global i32 0, align 4
@PR_NOWAIT = common dso_local global i32 0, align 4
@TH_SYN = common dso_local global i32 0, align 4
@TCPOLEN_TIMESTAMP = common dso_local global i32 0, align 4
@PFSS_TIMESTAMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pf_normalize_tcp_init(%struct.TYPE_6__* %0, i32 %1, %struct.pf_pdesc* %2, %struct.tcphdr* %3, %struct.pf_state_peer* %4, %struct.pf_state_peer* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pf_pdesc*, align 8
  %11 = alloca %struct.tcphdr*, align 8
  %12 = alloca %struct.pf_state_peer*, align 8
  %13 = alloca %struct.pf_state_peer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [60 x i32], align 16
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.pf_pdesc* %2, %struct.pf_pdesc** %10, align 8
  store %struct.tcphdr* %3, %struct.tcphdr** %11, align 8
  store %struct.pf_state_peer* %4, %struct.pf_state_peer** %12, align 8
  store %struct.pf_state_peer* %5, %struct.pf_state_peer** %13, align 8
  %19 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %20 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = icmp eq %struct.TYPE_7__* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @VERIFY(i32 %23)
  %25 = load i32, i32* @PR_NOWAIT, align 4
  %26 = call %struct.TYPE_7__* @pool_get(i32* @pf_state_scrub_pl, i32 %25)
  %27 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %28 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %27, i32 0, i32 0
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %28, align 8
  %29 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %30 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = icmp eq %struct.TYPE_7__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %163

34:                                               ; preds = %6
  %35 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %36 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = call i32 @bzero(%struct.TYPE_7__* %37, i32 48)
  %39 = load %struct.pf_pdesc*, %struct.pf_pdesc** %10, align 8
  %40 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %42 [
  ]

42:                                               ; preds = %34
  %43 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %44 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @TH_SYN, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %163

50:                                               ; preds = %42
  %51 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %52 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ugt i64 %54, 2
  br i1 %55, label %56, label %162

56:                                               ; preds = %50
  %57 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %58 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = icmp ne %struct.TYPE_7__* %59, null
  br i1 %60, label %61, label %162

61:                                               ; preds = %56
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = getelementptr inbounds [60 x i32], [60 x i32]* %16, i64 0, i64 0
  %65 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %66 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 2
  %69 = load %struct.pf_pdesc*, %struct.pf_pdesc** %10, align 8
  %70 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @pf_pull_hdr(%struct.TYPE_6__* %62, i32 %63, i32* %64, i32 %68, i32* null, i32* null, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %162

74:                                               ; preds = %61
  %75 = getelementptr inbounds [60 x i32], [60 x i32]* %16, i64 0, i64 0
  %76 = getelementptr inbounds i32, i32* %75, i64 8
  store i32* %76, i32** %17, align 8
  %77 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %78 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 2
  %81 = sext i32 %80 to i64
  %82 = sub i64 %81, 8
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %18, align 4
  br label %84

84:                                               ; preds = %160, %74
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* @TCPOLEN_TIMESTAMP, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %161

88:                                               ; preds = %84
  %89 = load i32*, i32** %17, align 8
  %90 = load i32, i32* %89, align 4
  switch i32 %90, label %146 [
    i32 130, label %91
    i32 129, label %91
    i32 128, label %96
  ]

91:                                               ; preds = %88, %88
  %92 = load i32*, i32** %17, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %17, align 8
  %94 = load i32, i32* %18, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %18, align 4
  br label %160

96:                                               ; preds = %88
  %97 = load i32*, i32** %17, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @TCPOLEN_TIMESTAMP, align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %145

102:                                              ; preds = %96
  %103 = load i32, i32* @PFSS_TIMESTAMP, align 4
  %104 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %105 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %104, i32 0, i32 0
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %103
  store i32 %109, i32* %107, align 4
  %110 = call i32 (...) @random()
  %111 = call i32 @htonl(i32 %110)
  %112 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %113 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %112, i32 0, i32 0
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 4
  store i32 %111, i32* %115, align 8
  %116 = load i32*, i32** %17, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  %118 = call i32 @memcpy(i32* %14, i32* %117, i32 4)
  %119 = load i32*, i32** %17, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 6
  %121 = call i32 @memcpy(i32* %15, i32* %120, i32 4)
  %122 = load i32, i32* %14, align 4
  %123 = call i8* @ntohl(i32 %122)
  %124 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %125 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %124, i32 0, i32 0
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 3
  store i8* %123, i8** %127, align 8
  %128 = load i32, i32* %14, align 4
  %129 = call i8* @ntohl(i32 %128)
  %130 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %131 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %130, i32 0, i32 0
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  store i8* %129, i8** %133, align 8
  %134 = load i32, i32* %15, align 4
  %135 = call i8* @ntohl(i32 %134)
  %136 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %137 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %136, i32 0, i32 0
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  store i8* %135, i8** %139, align 8
  %140 = load %struct.pf_state_peer*, %struct.pf_state_peer** %12, align 8
  %141 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %140, i32 0, i32 0
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = call i32 @getmicrouptime(i32* %143)
  br label %145

145:                                              ; preds = %102, %96
  br label %146

146:                                              ; preds = %88, %145
  %147 = load i32*, i32** %17, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @MAX(i32 %149, i32 2)
  %151 = load i32, i32* %18, align 4
  %152 = sub nsw i32 %151, %150
  store i32 %152, i32* %18, align 4
  %153 = load i32*, i32** %17, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @MAX(i32 %155, i32 2)
  %157 = load i32*, i32** %17, align 8
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  store i32* %159, i32** %17, align 8
  br label %160

160:                                              ; preds = %146, %91
  br label %84

161:                                              ; preds = %84
  br label %162

162:                                              ; preds = %161, %61, %56, %50
  store i32 0, i32* %7, align 4
  br label %163

163:                                              ; preds = %162, %49, %33
  %164 = load i32, i32* %7, align 4
  ret i32 %164
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local %struct.TYPE_7__* @pool_get(i32*, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @pf_pull_hdr(%struct.TYPE_6__*, i32, i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @getmicrouptime(i32*) #1

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
