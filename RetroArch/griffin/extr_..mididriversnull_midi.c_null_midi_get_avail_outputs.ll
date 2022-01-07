; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..mididriversnull_midi.c_null_midi_get_avail_outputs.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..mididriversnull_midi.c_null_midi_get_avail_outputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%union.string_list_elem_attr = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"Null\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.string_list*)* @null_midi_get_avail_outputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_midi_get_avail_outputs(%struct.string_list* %0) #0 {
  %2 = alloca %struct.string_list*, align 8
  %3 = alloca %union.string_list_elem_attr, align 4
  store %struct.string_list* %0, %struct.string_list** %2, align 8
  %4 = bitcast %union.string_list_elem_attr* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 4, i1 false)
  %5 = load %struct.string_list*, %struct.string_list** %2, align 8
  %6 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %3, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @string_list_append(%struct.string_list* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %7)
  ret i32 %8
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @string_list_append(%struct.string_list*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
