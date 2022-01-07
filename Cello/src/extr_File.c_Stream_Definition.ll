; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_File.c_Stream_Definition.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_File.c_Stream_Definition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [251 x i8] c"struct Stream {\0A  var  (*sopen)(var,var,var);\0A  void (*sclose)(var);\0A  void (*sseek)(var,int64_t,int);\0A  int64_t (*stell)(var);\0A  void (*sflush)(var);\0A  bool (*seof)(var);\0A  size_t (*sread)(var,void*,size_t);\0A  size_t (*swrite)(var,void*,size_t);\0A};\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @Stream_Definition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Stream_Definition() #0 {
  ret i8* getelementptr inbounds ([251 x i8], [251 x i8]* @.str, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
