; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_tcp_counts.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_tcp_counts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nstat_counts = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nstat_tucookie = type { %struct.inpcb* }
%struct.inpcb = type { %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.tcpcb = type { i64, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@TCPS_SYN_SENT = common dso_local global i64 0, align 8
@TCPS_ESTABLISHED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.nstat_counts*, i32*)* @nstat_tcp_counts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nstat_tcp_counts(i64 %0, %struct.nstat_counts* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.nstat_counts*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nstat_tucookie*, align 8
  %9 = alloca %struct.inpcb*, align 8
  %10 = alloca %struct.tcpcb*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.nstat_counts* %1, %struct.nstat_counts** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = inttoptr i64 %11 to %struct.nstat_tucookie*
  store %struct.nstat_tucookie* %12, %struct.nstat_tucookie** %8, align 8
  %13 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %14 = call i32 @bzero(%struct.nstat_counts* %13, i32 72)
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %17, %3
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @nstat_tcp_gone(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32*, i32** %7, align 8
  store i32 1, i32* %27, align 4
  br label %28

28:                                               ; preds = %26, %23
  %29 = load %struct.nstat_tucookie*, %struct.nstat_tucookie** %8, align 8
  %30 = getelementptr inbounds %struct.nstat_tucookie, %struct.nstat_tucookie* %29, i32 0, i32 0
  %31 = load %struct.inpcb*, %struct.inpcb** %30, align 8
  store %struct.inpcb* %31, %struct.inpcb** %9, align 8
  %32 = icmp ne %struct.inpcb* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %35 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %34)
  %36 = icmp ne %struct.tcpcb* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33, %28
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %4, align 4
  br label %191

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %19
  %41 = load %struct.nstat_tucookie*, %struct.nstat_tucookie** %8, align 8
  %42 = getelementptr inbounds %struct.nstat_tucookie, %struct.nstat_tucookie* %41, i32 0, i32 0
  %43 = load %struct.inpcb*, %struct.inpcb** %42, align 8
  store %struct.inpcb* %43, %struct.inpcb** %9, align 8
  %44 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %45 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %44)
  store %struct.tcpcb* %45, %struct.tcpcb** %10, align 8
  %46 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %47 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %46, i32 0, i32 17
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %50 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %49, i32 0, i32 3
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = call i32 @atomic_get_64(i32 %48, i32* %52)
  %54 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %55 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %54, i32 0, i32 16
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %58 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %57, i32 0, i32 3
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = call i32 @atomic_get_64(i32 %56, i32* %60)
  %62 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %63 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %62, i32 0, i32 15
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %66 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %65, i32 0, i32 3
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = call i32 @atomic_get_64(i32 %64, i32* %68)
  %70 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %71 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %70, i32 0, i32 14
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %74 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %73, i32 0, i32 3
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = call i32 @atomic_get_64(i32 %72, i32* %76)
  %78 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %79 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %83 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %82, i32 0, i32 13
  store i32 %81, i32* %83, align 4
  %84 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %85 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %89 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %88, i32 0, i32 12
  store i32 %87, i32* %89, align 4
  %90 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %91 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %95 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %94, i32 0, i32 11
  store i32 %93, i32* %95, align 4
  %96 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %97 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @TCPS_SYN_SENT, align 8
  %100 = icmp sge i64 %98, %99
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 1, i32 0
  %103 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %104 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %106 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %109 = icmp sge i64 %107, %108
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 1, i32 0
  %112 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %113 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %115 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %118 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %117, i32 0, i32 8
  store i32 %116, i32* %118, align 4
  %119 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %120 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %123 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %122, i32 0, i32 9
  store i32 %121, i32* %123, align 4
  %124 = load %struct.tcpcb*, %struct.tcpcb** %10, align 8
  %125 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %128 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %127, i32 0, i32 10
  store i32 %126, i32* %128, align 4
  %129 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %130 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %133 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %132, i32 0, i32 9
  %134 = load i32, i32* %133, align 4
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %40
  %137 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %138 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %137, i32 0, i32 8
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %141 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %140, i32 0, i32 9
  store i32 %139, i32* %141, align 4
  br label %142

142:                                              ; preds = %136, %40
  %143 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %144 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %147 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %146, i32 0, i32 2
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = call i32 @atomic_get_64(i32 %145, i32* %149)
  %151 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %152 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %155 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %154, i32 0, i32 2
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = call i32 @atomic_get_64(i32 %153, i32* %157)
  %159 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %160 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %163 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %162, i32 0, i32 1
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 1
  %166 = call i32 @atomic_get_64(i32 %161, i32* %165)
  %167 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %168 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %171 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %170, i32 0, i32 1
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = call i32 @atomic_get_64(i32 %169, i32* %173)
  %175 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %176 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %179 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %178, i32 0, i32 0
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 1
  %182 = call i32 @atomic_get_64(i32 %177, i32* %181)
  %183 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %184 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %187 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %186, i32 0, i32 0
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = call i32 @atomic_get_64(i32 %185, i32* %189)
  store i32 0, i32* %4, align 4
  br label %191

191:                                              ; preds = %142, %37
  %192 = load i32, i32* %4, align 4
  ret i32 %192
}

declare dso_local i32 @bzero(%struct.nstat_counts*, i32) #1

declare dso_local i64 @nstat_tcp_gone(i64) #1

declare dso_local %struct.tcpcb* @intotcpcb(%struct.inpcb*) #1

declare dso_local i32 @atomic_get_64(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
