; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cartridge.c_PreprocessCart.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cartridge.c_PreprocessCart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @PreprocessCart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PreprocessCart(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %194 [
    i32 128, label %11
    i32 129, label %11
  ]

11:                                               ; preds = %1, %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 10
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @Util_malloc(i32 %16)
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %5, align 8
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %183, %11
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %186

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 64, i32 0
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, 2
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 128, i32 0
  %34 = or i32 %28, %33
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 4096, i32 0
  %40 = or i32 %34, %39
  %41 = load i32, i32* %3, align 4
  %42 = and i32 %41, 8
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 32768, i32 0
  %46 = or i32 %40, %45
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, 16
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 16384, i32 0
  %52 = or i32 %46, %51
  %53 = load i32, i32* %3, align 4
  %54 = and i32 %53, 32
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 8192, i32 0
  %58 = or i32 %52, %57
  %59 = load i32, i32* %3, align 4
  %60 = and i32 %59, 64
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 256, i32 0
  %64 = or i32 %58, %63
  %65 = load i32, i32* %3, align 4
  %66 = and i32 %65, 128
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 32, i32 0
  %70 = or i32 %64, %69
  %71 = load i32, i32* %3, align 4
  %72 = and i32 %71, 256
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 16, i32 0
  %76 = or i32 %70, %75
  %77 = load i32, i32* %3, align 4
  %78 = and i32 %77, 512
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 8, i32 0
  %82 = or i32 %76, %81
  %83 = load i32, i32* %3, align 4
  %84 = and i32 %83, 1024
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 1, i32 0
  %88 = or i32 %82, %87
  %89 = load i32, i32* %3, align 4
  %90 = and i32 %89, 2048
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 2, i32 0
  %94 = or i32 %88, %93
  %95 = load i32, i32* %3, align 4
  %96 = and i32 %95, 4096
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 4, i32 0
  %100 = or i32 %94, %99
  %101 = load i32, i32* %3, align 4
  %102 = and i32 %101, 8192
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 512, i32 0
  %106 = or i32 %100, %105
  %107 = load i32, i32* %3, align 4
  %108 = and i32 %107, 16384
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 2048, i32 0
  %112 = or i32 %106, %111
  %113 = load i32, i32* %3, align 4
  %114 = and i32 %113, 32768
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 1024, i32 0
  %118 = or i32 %112, %117
  %119 = load i32, i32* %3, align 4
  %120 = and i32 %119, 65536
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i32 65536, i32 0
  %124 = or i32 %118, %123
  store i32 %124, i32* %6, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = and i32 %132, 1
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 2, i32 0
  %137 = load i32, i32* %7, align 4
  %138 = and i32 %137, 2
  %139 = icmp ne i32 %138, 0
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i32 8, i32 0
  %142 = or i32 %136, %141
  %143 = load i32, i32* %7, align 4
  %144 = and i32 %143, 4
  %145 = icmp ne i32 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i32 128, i32 0
  %148 = or i32 %142, %147
  %149 = load i32, i32* %7, align 4
  %150 = and i32 %149, 8
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i32 64, i32 0
  %154 = or i32 %148, %153
  %155 = load i32, i32* %7, align 4
  %156 = and i32 %155, 16
  %157 = icmp ne i32 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i32 1, i32 0
  %160 = or i32 %154, %159
  %161 = load i32, i32* %7, align 4
  %162 = and i32 %161, 32
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32 4, i32 0
  %166 = or i32 %160, %165
  %167 = load i32, i32* %7, align 4
  %168 = and i32 %167, 64
  %169 = icmp ne i32 %168, 0
  %170 = zext i1 %169 to i64
  %171 = select i1 %169, i32 32, i32 0
  %172 = or i32 %166, %171
  %173 = load i32, i32* %7, align 4
  %174 = and i32 %173, 128
  %175 = icmp ne i32 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i32 16, i32 0
  %178 = or i32 %172, %177
  %179 = load i32*, i32** %5, align 8
  %180 = load i32, i32* %3, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  store i32 %178, i32* %182, align 4
  br label %183

183:                                              ; preds = %23
  %184 = load i32, i32* %3, align 4
  %185 = add i32 %184, 1
  store i32 %185, i32* %3, align 4
  br label %19

186:                                              ; preds = %19
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = call i32 @free(i32* %189)
  %191 = load i32*, i32** %5, align 8
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 2
  store i32* %191, i32** %193, align 8
  br label %194

194:                                              ; preds = %1, %186
  ret void
}

declare dso_local i64 @Util_malloc(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
