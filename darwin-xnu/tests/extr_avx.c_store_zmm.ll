; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_avx.c_store_zmm.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_avx.c_store_zmm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @store_zmm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_zmm(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, i32* %4, i64 %6
  call void asm sideeffect "vmovaps  %zmm0, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %7) #1, !srcloc !2
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %3, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  call void asm sideeffect "vmovaps  %zmm1, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %13) #1, !srcloc !3
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %3, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  call void asm sideeffect "vmovaps  %zmm2, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %19) #1, !srcloc !4
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  call void asm sideeffect "vmovaps  %zmm3, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %25) #1, !srcloc !5
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  call void asm sideeffect "vmovaps  %zmm4, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %31) #1, !srcloc !6
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  call void asm sideeffect "vmovaps  %zmm5, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %37) #1, !srcloc !7
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  call void asm sideeffect "vmovaps  %zmm6, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %43) #1, !srcloc !8
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  call void asm sideeffect "vmovaps  %zmm7, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %49) #1, !srcloc !9
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  %52 = load i32*, i32** %2, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  call void asm sideeffect "vmovaps  %zmm8, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %55) #1, !srcloc !10
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  %58 = load i32*, i32** %2, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  call void asm sideeffect "vmovaps  %zmm9, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %61) #1, !srcloc !11
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  %64 = load i32*, i32** %2, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  call void asm sideeffect "vmovaps  %zmm10, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %67) #1, !srcloc !12
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  %70 = load i32*, i32** %2, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  call void asm sideeffect "vmovaps  %zmm11, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %73) #1, !srcloc !13
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  %76 = load i32*, i32** %2, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  call void asm sideeffect "vmovaps  %zmm12, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %79) #1, !srcloc !14
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  %82 = load i32*, i32** %2, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  call void asm sideeffect "vmovaps  %zmm13, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %85) #1, !srcloc !15
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %3, align 4
  %88 = load i32*, i32** %2, align 8
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  call void asm sideeffect "vmovaps  %zmm14, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %91) #1, !srcloc !16
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %3, align 4
  %94 = load i32*, i32** %2, align 8
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  call void asm sideeffect "vmovaps  %zmm15, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %97) #1, !srcloc !17
  %98 = load i32, i32* %3, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %3, align 4
  %100 = load i32*, i32** %2, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  call void asm sideeffect "vmovaps  %zmm16, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %103) #1, !srcloc !18
  %104 = load i32, i32* %3, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %3, align 4
  %106 = load i32*, i32** %2, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  call void asm sideeffect "vmovaps  %zmm17, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %109) #1, !srcloc !19
  %110 = load i32, i32* %3, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %3, align 4
  %112 = load i32*, i32** %2, align 8
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  call void asm sideeffect "vmovaps  %zmm18, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %115) #1, !srcloc !20
  %116 = load i32, i32* %3, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %3, align 4
  %118 = load i32*, i32** %2, align 8
  %119 = load i32, i32* %3, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  call void asm sideeffect "vmovaps  %zmm19, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %121) #1, !srcloc !21
  %122 = load i32, i32* %3, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %3, align 4
  %124 = load i32*, i32** %2, align 8
  %125 = load i32, i32* %3, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  call void asm sideeffect "vmovaps  %zmm20, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %127) #1, !srcloc !22
  %128 = load i32, i32* %3, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %3, align 4
  %130 = load i32*, i32** %2, align 8
  %131 = load i32, i32* %3, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  call void asm sideeffect "vmovaps  %zmm21, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %133) #1, !srcloc !23
  %134 = load i32, i32* %3, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %3, align 4
  %136 = load i32*, i32** %2, align 8
  %137 = load i32, i32* %3, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  call void asm sideeffect "vmovaps  %zmm22, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %139) #1, !srcloc !24
  %140 = load i32, i32* %3, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %3, align 4
  %142 = load i32*, i32** %2, align 8
  %143 = load i32, i32* %3, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  call void asm sideeffect "vmovaps  %zmm23, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %145) #1, !srcloc !25
  %146 = load i32, i32* %3, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %3, align 4
  %148 = load i32*, i32** %2, align 8
  %149 = load i32, i32* %3, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  call void asm sideeffect "vmovaps  %zmm24, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %151) #1, !srcloc !26
  %152 = load i32, i32* %3, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %3, align 4
  %154 = load i32*, i32** %2, align 8
  %155 = load i32, i32* %3, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  call void asm sideeffect "vmovaps  %zmm25, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %157) #1, !srcloc !27
  %158 = load i32, i32* %3, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %3, align 4
  %160 = load i32*, i32** %2, align 8
  %161 = load i32, i32* %3, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  call void asm sideeffect "vmovaps  %zmm26, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %163) #1, !srcloc !28
  %164 = load i32, i32* %3, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %3, align 4
  %166 = load i32*, i32** %2, align 8
  %167 = load i32, i32* %3, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  call void asm sideeffect "vmovaps  %zmm27, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %169) #1, !srcloc !29
  %170 = load i32, i32* %3, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %3, align 4
  %172 = load i32*, i32** %2, align 8
  %173 = load i32, i32* %3, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  call void asm sideeffect "vmovaps  %zmm28, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %175) #1, !srcloc !30
  %176 = load i32, i32* %3, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %3, align 4
  %178 = load i32*, i32** %2, align 8
  %179 = load i32, i32* %3, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  call void asm sideeffect "vmovaps  %zmm29, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %181) #1, !srcloc !31
  %182 = load i32, i32* %3, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %3, align 4
  %184 = load i32*, i32** %2, align 8
  %185 = load i32, i32* %3, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  call void asm sideeffect "vmovaps  %zmm30, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %187) #1, !srcloc !32
  %188 = load i32, i32* %3, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %3, align 4
  %190 = load i32*, i32** %2, align 8
  %191 = load i32, i32* %3, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  call void asm sideeffect "vmovaps  %zmm31, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %193) #1, !srcloc !33
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 274}
!3 = !{i32 340}
!4 = !{i32 406}
!5 = !{i32 472}
!6 = !{i32 538}
!7 = !{i32 604}
!8 = !{i32 670}
!9 = !{i32 736}
!10 = !{i32 803}
!11 = !{i32 869}
!12 = !{i32 935}
!13 = !{i32 1002}
!14 = !{i32 1069}
!15 = !{i32 1136}
!16 = !{i32 1203}
!17 = !{i32 1270}
!18 = !{i32 1337}
!19 = !{i32 1404}
!20 = !{i32 1471}
!21 = !{i32 1538}
!22 = !{i32 1605}
!23 = !{i32 1672}
!24 = !{i32 1739}
!25 = !{i32 1806}
!26 = !{i32 1873}
!27 = !{i32 1940}
!28 = !{i32 2007}
!29 = !{i32 2074}
!30 = !{i32 2141}
!31 = !{i32 2208}
!32 = !{i32 2275}
!33 = !{i32 2342}
