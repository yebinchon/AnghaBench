; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_huffman.c_delete_huffman_decoder.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_huffman.c_delete_huffman_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.huffman_decoder = type { %struct.huffman_decoder*, %struct.huffman_decoder* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_huffman_decoder(%struct.huffman_decoder* %0) #0 {
  %2 = alloca %struct.huffman_decoder*, align 8
  store %struct.huffman_decoder* %0, %struct.huffman_decoder** %2, align 8
  %3 = load %struct.huffman_decoder*, %struct.huffman_decoder** %2, align 8
  %4 = icmp ne %struct.huffman_decoder* %3, null
  br i1 %4, label %5, label %28

5:                                                ; preds = %1
  %6 = load %struct.huffman_decoder*, %struct.huffman_decoder** %2, align 8
  %7 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %6, i32 0, i32 1
  %8 = load %struct.huffman_decoder*, %struct.huffman_decoder** %7, align 8
  %9 = icmp ne %struct.huffman_decoder* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load %struct.huffman_decoder*, %struct.huffman_decoder** %2, align 8
  %12 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %11, i32 0, i32 1
  %13 = load %struct.huffman_decoder*, %struct.huffman_decoder** %12, align 8
  %14 = call i32 @free(%struct.huffman_decoder* %13)
  br label %15

15:                                               ; preds = %10, %5
  %16 = load %struct.huffman_decoder*, %struct.huffman_decoder** %2, align 8
  %17 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %16, i32 0, i32 0
  %18 = load %struct.huffman_decoder*, %struct.huffman_decoder** %17, align 8
  %19 = icmp ne %struct.huffman_decoder* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.huffman_decoder*, %struct.huffman_decoder** %2, align 8
  %22 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %21, i32 0, i32 0
  %23 = load %struct.huffman_decoder*, %struct.huffman_decoder** %22, align 8
  %24 = call i32 @free(%struct.huffman_decoder* %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.huffman_decoder*, %struct.huffman_decoder** %2, align 8
  %27 = call i32 @free(%struct.huffman_decoder* %26)
  br label %28

28:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @free(%struct.huffman_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
