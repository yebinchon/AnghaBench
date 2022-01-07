; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcpcb_to_xtcpcb64.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcpcb_to_xtcpcb64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xtcpcb64 = type { i32, i64, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i64 }

@TCPT_REXMT = common dso_local global i64 0, align 8
@TCPT_REXMT_EXT = common dso_local global i64 0, align 8
@TCPT_PERSIST = common dso_local global i64 0, align 8
@TCPT_PERSIST_EXT = common dso_local global i64 0, align 8
@TCPT_KEEP = common dso_local global i64 0, align 8
@TCPT_KEEP_EXT = common dso_local global i64 0, align 8
@TCPT_2MSL = common dso_local global i64 0, align 8
@TCPT_2MSL_EXT = common dso_local global i64 0, align 8
@TF_FORCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.xtcpcb64*)* @tcpcb_to_xtcpcb64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcpcb_to_xtcpcb64(%struct.tcpcb* %0, %struct.xtcpcb64* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.xtcpcb64*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.xtcpcb64* %1, %struct.xtcpcb64** %4, align 8
  %5 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %6 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %5, i32 0, i32 46
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @VM_KERNEL_ADDRPERM(i32 %8)
  %10 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %11 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %10, i32 0, i32 49
  store i64 %9, i64* %11, align 8
  %12 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %13 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %12, i32 0, i32 45
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %16 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %15, i32 0, i32 48
  store i32 %14, i32* %16, align 8
  %17 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %18 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %17, i32 0, i32 44
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @TCPT_REXMT, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %24 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %23, i32 0, i32 47
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @TCPT_REXMT_EXT, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 %22, i32* %27, align 4
  %28 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %29 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %28, i32 0, i32 44
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @TCPT_PERSIST, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %35 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %34, i32 0, i32 47
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @TCPT_PERSIST_EXT, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 %33, i32* %38, align 4
  %39 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %40 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %39, i32 0, i32 44
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @TCPT_KEEP, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %46 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %45, i32 0, i32 47
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @TCPT_KEEP_EXT, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 %44, i32* %49, align 4
  %50 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %51 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %50, i32 0, i32 44
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @TCPT_2MSL, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %57 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %56, i32 0, i32 47
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @TCPT_2MSL_EXT, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %55, i32* %60, align 4
  %61 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %62 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %61, i32 0, i32 43
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %65 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %64, i32 0, i32 46
  store i32 %63, i32* %65, align 4
  %66 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %67 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %66, i32 0, i32 42
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %70 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %69, i32 0, i32 45
  store i32 %68, i32* %70, align 8
  %71 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %72 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @TF_FORCE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 1, i32 0
  %79 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %80 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %82 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %81, i32 0, i32 41
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %85 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %84, i32 0, i32 44
  store i32 %83, i32* %85, align 4
  %86 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %87 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %86, i32 0, i32 40
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %90 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %89, i32 0, i32 43
  store i32 %88, i32* %90, align 8
  %91 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %92 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %91, i32 0, i32 39
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %95 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %94, i32 0, i32 42
  store i32 %93, i32* %95, align 4
  %96 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %97 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %96, i32 0, i32 38
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %100 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %99, i32 0, i32 41
  store i32 %98, i32* %100, align 8
  %101 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %102 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %101, i32 0, i32 37
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %105 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %104, i32 0, i32 40
  store i32 %103, i32* %105, align 4
  %106 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %107 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %106, i32 0, i32 36
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %110 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %109, i32 0, i32 39
  store i32 %108, i32* %110, align 8
  %111 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %112 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %111, i32 0, i32 35
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %115 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %114, i32 0, i32 38
  store i32 %113, i32* %115, align 4
  %116 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %117 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %116, i32 0, i32 34
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %120 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %119, i32 0, i32 37
  store i32 %118, i32* %120, align 8
  %121 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %122 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %121, i32 0, i32 33
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %125 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %124, i32 0, i32 36
  store i32 %123, i32* %125, align 4
  %126 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %127 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %126, i32 0, i32 32
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %130 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %129, i32 0, i32 35
  store i32 %128, i32* %130, align 8
  %131 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %132 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %131, i32 0, i32 31
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %135 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %134, i32 0, i32 34
  store i32 %133, i32* %135, align 4
  %136 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %137 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %136, i32 0, i32 30
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %140 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %139, i32 0, i32 33
  store i32 %138, i32* %140, align 8
  %141 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %142 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %141, i32 0, i32 29
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %145 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %144, i32 0, i32 32
  store i32 %143, i32* %145, align 4
  %146 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %147 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %146, i32 0, i32 28
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %150 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %149, i32 0, i32 31
  store i32 %148, i32* %150, align 8
  %151 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %152 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %151, i32 0, i32 27
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %155 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %154, i32 0, i32 30
  store i32 %153, i32* %155, align 4
  %156 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %157 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %156, i32 0, i32 26
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %160 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %159, i32 0, i32 29
  store i32 %158, i32* %160, align 8
  %161 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %162 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %161, i32 0, i32 25
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %165 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %164, i32 0, i32 28
  store i32 %163, i32* %165, align 4
  %166 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %167 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %166, i32 0, i32 24
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %170 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %169, i32 0, i32 27
  store i32 %168, i32* %170, align 8
  %171 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %172 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %171, i32 0, i32 23
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %175 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %174, i32 0, i32 26
  store i32 %173, i32* %175, align 4
  %176 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %177 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %176, i32 0, i32 22
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %180 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %179, i32 0, i32 25
  store i32 %178, i32* %180, align 8
  %181 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %182 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %181, i32 0, i32 21
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %185 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %184, i32 0, i32 24
  store i32 %183, i32* %185, align 4
  %186 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %187 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %186, i32 0, i32 20
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %190 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %189, i32 0, i32 23
  store i32 %188, i32* %190, align 8
  %191 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %192 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %191, i32 0, i32 19
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %195 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %194, i32 0, i32 22
  store i32 %193, i32* %195, align 4
  %196 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %197 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %196, i32 0, i32 18
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %200 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %199, i32 0, i32 21
  store i32 %198, i32* %200, align 8
  %201 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %202 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %201, i32 0, i32 17
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %205 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %204, i32 0, i32 20
  store i32 %203, i32* %205, align 4
  %206 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %207 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %206, i32 0, i32 16
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %210 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %209, i32 0, i32 19
  store i32 %208, i32* %210, align 8
  %211 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %212 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %211, i32 0, i32 15
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %215 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %214, i32 0, i32 18
  store i32 %213, i32* %215, align 4
  %216 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %217 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %216, i32 0, i32 14
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %220 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %219, i32 0, i32 17
  store i32 %218, i32* %220, align 8
  %221 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %222 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %221, i32 0, i32 13
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %225 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %224, i32 0, i32 16
  store i32 %223, i32* %225, align 4
  %226 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %227 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %226, i32 0, i32 12
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %230 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %229, i32 0, i32 15
  store i32 %228, i32* %230, align 8
  %231 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %232 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %231, i32 0, i32 11
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %235 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %234, i32 0, i32 14
  store i32 %233, i32* %235, align 4
  %236 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %237 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %236, i32 0, i32 10
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %240 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %239, i32 0, i32 13
  store i32 %238, i32* %240, align 8
  %241 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %242 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %241, i32 0, i32 9
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %245 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %244, i32 0, i32 12
  store i32 %243, i32* %245, align 4
  %246 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %247 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %246, i32 0, i32 8
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %250 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %249, i32 0, i32 11
  store i32 %248, i32* %250, align 8
  %251 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %252 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %251, i32 0, i32 7
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %255 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %254, i32 0, i32 10
  store i32 %253, i32* %255, align 4
  %256 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %257 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %256, i32 0, i32 6
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %260 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %259, i32 0, i32 9
  store i32 %258, i32* %260, align 8
  %261 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %262 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %265 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %264, i32 0, i32 8
  store i32 %263, i32* %265, align 4
  %266 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %267 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %266, i32 0, i32 4
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %270 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %269, i32 0, i32 7
  store i32 %268, i32* %270, align 8
  %271 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %272 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %271, i32 0, i32 6
  store i64 0, i64* %272, align 8
  %273 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %274 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %273, i32 0, i32 5
  store i64 0, i64* %274, align 8
  %275 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %276 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %279 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %278, i32 0, i32 4
  store i32 %277, i32* %279, align 8
  %280 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %281 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %284 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %283, i32 0, i32 3
  store i32 %282, i32* %284, align 4
  %285 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %286 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %289 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %288, i32 0, i32 2
  store i32 %287, i32* %289, align 8
  %290 = load %struct.xtcpcb64*, %struct.xtcpcb64** %4, align 8
  %291 = getelementptr inbounds %struct.xtcpcb64, %struct.xtcpcb64* %290, i32 0, i32 1
  store i64 0, i64* %291, align 8
  ret void
}

declare dso_local i64 @VM_KERNEL_ADDRPERM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
