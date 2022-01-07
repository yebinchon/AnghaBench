; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_buffer_write_message_header.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_buffer_write_message_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netagent_message_header = type { i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8**, i8*, i8*, i8*, i8*, i8*)* @netagent_buffer_write_message_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @netagent_buffer_write_message_header(i8** %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8** %0, i8*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i8**, i8*** %7, align 8
  %15 = bitcast i8** %14 to i8*
  %16 = bitcast i8* %15 to %struct.netagent_message_header*
  %17 = getelementptr inbounds %struct.netagent_message_header, %struct.netagent_message_header* %16, i32 0, i32 4
  store i8* %13, i8** %17, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load i8**, i8*** %7, align 8
  %20 = bitcast i8** %19 to i8*
  %21 = bitcast i8* %20 to %struct.netagent_message_header*
  %22 = getelementptr inbounds %struct.netagent_message_header, %struct.netagent_message_header* %21, i32 0, i32 3
  store i8* %18, i8** %22, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i8**, i8*** %7, align 8
  %25 = bitcast i8** %24 to i8*
  %26 = bitcast i8* %25 to %struct.netagent_message_header*
  %27 = getelementptr inbounds %struct.netagent_message_header, %struct.netagent_message_header* %26, i32 0, i32 2
  store i8* %23, i8** %27, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load i8**, i8*** %7, align 8
  %30 = bitcast i8** %29 to i8*
  %31 = bitcast i8* %30 to %struct.netagent_message_header*
  %32 = getelementptr inbounds %struct.netagent_message_header, %struct.netagent_message_header* %31, i32 0, i32 1
  store i8* %28, i8** %32, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load i8**, i8*** %7, align 8
  %35 = bitcast i8** %34 to i8*
  %36 = bitcast i8* %35 to %struct.netagent_message_header*
  %37 = getelementptr inbounds %struct.netagent_message_header, %struct.netagent_message_header* %36, i32 0, i32 0
  store i8* %33, i8** %37, align 8
  %38 = load i8**, i8*** %7, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 40
  ret i8** %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
